<?php
  $Pagina="admin";
  include "header.php";
?>
<div class="container">
	<div class="col-md-10">
		<form class="form-inline" role="form">
			<div class="form-group">
				<label for="userNombre">Nombre</label>
				<input type="number" class="form-control" id="userNombre" placeholder="Nombre" size="10" maxlength="255" title="Nombre" required  onkeyup="javascript:mask('userNombre', '00000-0000', event);">
			</div>
		</form>
	</div>
</div>

<script>
function mask(inputName, mask, evt) {
	try {
		var text = document.getElementById(inputName);
		var value = text.value;

		// If user pressed DEL or BACK SPACE, clean the value
		try {
			var e = (evt.which) ? evt.which : event.keyCode;
			if ( e == 46 || e == 8 ) {
				text.value = "";
				return;
			}
		} catch (e1) {}

		var literalPattern=/[0\*]/;
		var numberPattern=/[0-9]/;
		var newValue = "";

		for (var vId = 0, mId = 0 ; mId < mask.length ; ) {
			if (mId >= value.length)
				break;

			// Number expected but got a different value, store only the valid portion
			if (mask[mId] == '0' && value[vId].match(numberPattern) == null) {
				break;
			}

			// Found a literal
			while (mask[mId].match(literalPattern) == null) {
				if (value[vId] == mask[mId])
					break;

				newValue += mask[mId++];
			}

			newValue += value[vId++];
			mId++;
		}

		text.value = newValue;
	} catch(e) {}
}
</script>
<?php
  include "footer.php"
?>