
package net.mcreator.test.init;

import net.minecraftforge.registries.RegistryObject;
import net.minecraftforge.registries.ForgeRegistries;
import net.minecraftforge.registries.DeferredRegister;
import net.minecraftforge.common.extensions.IForgeMenuType;

import net.minecraft.world.inventory.MenuType;

import net.mcreator.test.world.inventory.HypercompressorGuiMenu;
import net.mcreator.test.FreshPotatoMod;

public class FreshPotatoModMenus {
	public static final DeferredRegister<MenuType<?>> REGISTRY = DeferredRegister.create(ForgeRegistries.MENU_TYPES, FreshPotatoMod.MODID);
	public static final RegistryObject<MenuType<HypercompressorGuiMenu>> HYPERCOMPRESSOR_GUI = REGISTRY.register("hypercompressor_gui", () -> IForgeMenuType.create(HypercompressorGuiMenu::new));
}
