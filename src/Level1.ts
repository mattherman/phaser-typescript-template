module MyGame {

	export class Level1 extends Phaser.State {

		background: Phaser.Sprite;
		music: Phaser.Sound;
		player: MyGame.Player;

		create() {

			this.background = this.add.sprite(0, 0, 'level1');

			this.player = new Player(this.game, 130, 284);

		}

	}

} 