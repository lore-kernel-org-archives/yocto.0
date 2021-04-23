Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
 by mx.groups.io with SMTP id smtpd.web10.5642.1619155323847644503
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Apr 2021 22:22:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@apide.com header.s=google header.b=Nc7Er64J;
 spf=pass (domain: apide.com, ip: 209.85.160.171, mailfrom: morten.bruun@apide.com)
Received: by mail-qt1-f171.google.com with SMTP id a18so11872429qtj.10
        for <yocto@lists.yoctoproject.org>; Thu, 22 Apr 2021 22:22:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apide.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=MIrYy5WyudaU/2f5v/jlr7f4m60ahhicoLpUgjm2aLU=;
        b=Nc7Er64JWtjpRLsfJ8XSDIqCswK7/tYrcXRQIhSgV77QCYxAF0ksml9QhRjqWHZQvi
         B7u/t2Y19tzs9qzpr0CXkcB0F+MPTI3GejhFElSMokKLKzPXSyOEtDhAAEkU0ob+7v3g
         EBiQDMRDZruMsZ/awlqFQ17Gk2Z/xiN91UveQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=MIrYy5WyudaU/2f5v/jlr7f4m60ahhicoLpUgjm2aLU=;
        b=iw/L0lfLbThIt1teLUosURvYaaiGWSyKlbDWDbA7jVcBA0cK2zlYEDmyId2MOVtwhg
         Dd0PP7RnZr7y+pzSDX1uJxhfqsEUmhCfR37TMgYMDEJCaEV/Yf6z6MnJBbE9bHeu+nfD
         fFPVax+ffpX9ShdB2ZICx8SkxEooDnVWJAIySkJLj2qqgIERFw/nyMuKsZ9TR2YjSruK
         NNoWJsYN24nsDaWE5gUpaO7XtzGlES8kktH9YFhUaX5zl9VpRWQWpfvCerAXPMnVJPTf
         mwOfVLiST7+LPuCiP30Rg0EZpkEtxBGmNagTKVYpA9R9OYMAVm0JY6eZscZAh7eP13Ol
         pDMQ==
X-Gm-Message-State: AOAM533epI3JJ1HfBycSx5FwARdTSIgdCVQj9Za57OUwWL2wQwGuOr4z
	WtLwCV0IrP7YQlVejPu+CJA0mCbllyOFhGt2RSTswYAP3K2f58rAMKg=
X-Google-Smtp-Source: ABdhPJxDBDXWfUUv3WUGuGu5AsAWjROTJdbGgi2cL2K40R23/6zsSvZT3C2urvmIabDV3aB9IiGGJ8zkIQQFW75B6fc=
X-Received: by 2002:ac8:d87:: with SMTP id s7mr2098518qti.32.1619155322499;
 Thu, 22 Apr 2021 22:22:02 -0700 (PDT)
MIME-Version: 1.0
From: "Morten Bruun" <morten.bruun@apide.com>
Date: Fri, 23 Apr 2021 07:21:51 +0200
Message-ID: <CAMrUZLiOVUDxXUXytS4BRmkb+xK7M03i2fE0hoUOW6SEeP7Y8w@mail.gmail.com>
Subject: Problems building hardknott for raspberri pi
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d5894d05c09cf91a"

--000000000000d5894d05c09cf91a
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm upgrading to hardknott. The meta-raspberry layer does not have a
hardknott branch, so I'm building with the master branch.

Does anyone know why this error occurs when building mesa-gl?

ERROR: mesa-gl-2_21.0.1-r0 do_compile: Execution of
'/home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/temp/run.do_compile.31992'
failed with exit code 1:
[1/7] arm-poky-linux-gnueabi-g++ -mthumb -mfpu=neon-vfpv4 -mfloat-abi=hard
-mcpu=cortex-a7 -fstack-protector-strong -O2 -D_FORTIFY_SOURCE=2 -Wformat
-Wformat-security -Werror=format-security
--sysroot=/home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/recipe-sysroot
 -o src/gbm/libgbm.so.1.0.0 src/gbm/libgbm.so.1.0.0.p/main_backend.c.o
src/gbm/libgbm.so.1.0.0.p/main_gbm.c.o -Wl,--as-needed -Wl,--no-undefined
-shared -fPIC -Wl,--start-group -Wl,-soname,libgbm.so.1 -Wl,-O1
-Wl,--hash-style=gnu -Wl,--as-needed -Wl,-z,relro,-z,now
src/loader/libloader.a src/util/libmesa_util.a
src/util/format/libmesa_format.a src/util/libxmlconfig.a -Wl,--gc-sections
-ldl -pthread
/home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/recipe-sysroot/usr/lib/libz.so
-lm
/home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/recipe-sysroot/usr/lib/libexpat.so
/home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/recipe-sysroot/usr/lib/libdrm.so
-Wl,--end-group
FAILED: src/gbm/libgbm.so.1.0.0
arm-poky-linux-gnueabi-g++ -mthumb -mfpu=neon-vfpv4 -mfloat-abi=hard
-mcpu=cortex-a7 -fstack-protector-strong -O2 -D_FORTIFY_SOURCE=2 -Wformat
-Wformat-security -Werror=format-security
--sysroot=/home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/recipe-sysroot
 -o src/gbm/libgbm.so.1.0.0 src/gbm/libgbm.so.1.0.0.p/main_backend.c.o
src/gbm/libgbm.so.1.0.0.p/main_gbm.c.o -Wl,--as-needed -Wl,--no-undefined
-shared -fPIC -Wl,--start-group -Wl,-soname,libgbm.so.1 -Wl,-O1
-Wl,--hash-style=gnu -Wl,--as-needed -Wl,-z,relro,-z,now
src/loader/libloader.a src/util/libmesa_util.a
src/util/format/libmesa_format.a src/util/libxmlconfig.a -Wl,--gc-sections
-ldl -pthread
/home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/recipe-sysroot/usr/lib/libz.so
-lm
/home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/recipe-sysroot/usr/lib/libexpat.so
/home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/recipe-sysroot/usr/lib/libdrm.so
-Wl,--end-group
/home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/10.2.0/ld:
src/gbm/libgbm.so.1.0.0.p/main_backend.c.o: in function
`_gbm_create_device':
/usr/src/debug/mesa-gl/2_21.0.1-r0/build/../mesa-21.0.1/src/gbm/main/backend.c:104:
undefined reference to `gbm_dri_backend'
collect2: error: ld returned 1 exit status
[2/7]
/home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/recipe-sysroot-native/usr/bin/python3-native/python3
../mesa-21.0.1/bin/git_sha1_gen.py --output src/git_sha1.h
[3/4] rm -f src/mesa/libmesa_classic.a && arm-poky-linux-gnueabi-gcc-ar
csrD src/mesa/libmesa_classic.a
src/mesa/libmesa_classic.a.p/math_m_xform.c.o
src/mesa/libmesa_classic.a.p/tnl_t_context.c.o
src/mesa/libmesa_classic.a.p/tnl_t_draw.c.o
src/mesa/libmesa_classic.a.p/tnl_t_pipeline.c.o
src/mesa/libmesa_classic.a.p/tnl_t_rebase.c.o
src/mesa/libmesa_classic.a.p/tnl_t_split.c.o
src/mesa/libmesa_classic.a.p/tnl_t_split_copy.c.o
src/mesa/libmesa_classic.a.p/tnl_t_split_inplace.c.o
src/mesa/libmesa_classic.a.p/tnl_t_vb_fog.c.o
src/mesa/libmesa_classic.a.p/tnl_t_vb_light.c.o
src/mesa/libmesa_classic.a.p/tnl_t_vb_normals.c.o
src/mesa/libmesa_classic.a.p/tnl_t_vb_points.c.o
src/mesa/libmesa_classic.a.p/tnl_t_vb_program.c.o
src/mesa/libmesa_classic.a.p/tnl_t_vb_render.c.o
src/mesa/libmesa_classic.a.p/tnl_t_vb_texgen.c.o
src/mesa/libmesa_classic.a.p/tnl_t_vb_texmat.c.o
src/mesa/libmesa_classic.a.p/tnl_t_vb_vertex.c.o
src/mesa/libmesa_classic.a.p/tnl_t_vertex.c.o
src/mesa/libmesa_classic.a.p/tnl_t_vertex_generic.c.o
src/mesa/libmesa_classic.a.p/tnl_t_vertex_sse.c.o
src/mesa/libmesa_classic.a.p/tnl_t_vp_build.c.o
src/mesa/libmesa_classic.a.p/swrast_s_aaline.c.o
src/mesa/libmesa_classic.a.p/swrast_s_aatriangle.c.o
src/mesa/libmesa_classic.a.p/swrast_s_alpha.c.o
src/mesa/libmesa_classic.a.p/swrast_s_atifragshader.c.o
src/mesa/libmesa_classic.a.p/swrast_s_bitmap.c.o
src/mesa/libmesa_classic.a.p/swrast_s_blend.c.o
src/mesa/libmesa_classic.a.p/swrast_s_blit.c.o
src/mesa/libmesa_classic.a.p/swrast_s_clear.c.o
src/mesa/libmesa_classic.a.p/swrast_s_context.c.o
src/mesa/libmesa_classic.a.p/swrast_s_copypix.c.o
src/mesa/libmesa_classic.a.p/swrast_s_depth.c.o
src/mesa/libmesa_classic.a.p/swrast_s_drawpix.c.o
src/mesa/libmesa_classic.a.p/swrast_s_feedback.c.o
src/mesa/libmesa_classic.a.p/swrast_s_fog.c.o
src/mesa/libmesa_classic.a.p/swrast_s_fragprog.c.o
src/mesa/libmesa_classic.a.p/swrast_s_lines.c.o
src/mesa/libmesa_classic.a.p/swrast_s_logic.c.o
src/mesa/libmesa_classic.a.p/swrast_s_masking.c.o
src/mesa/libmesa_classic.a.p/swrast_s_points.c.o
src/mesa/libmesa_classic.a.p/swrast_s_renderbuffer.c.o
src/mesa/libmesa_classic.a.p/swrast_s_span.c.o
src/mesa/libmesa_classic.a.p/swrast_s_stencil.c.o
src/mesa/libmesa_classic.a.p/swrast_s_texcombine.c.o
src/mesa/libmesa_classic.a.p/swrast_s_texfetch.c.o
src/mesa/libmesa_classic.a.p/swrast_s_texfilter.c.o
src/mesa/libmesa_classic.a.p/swrast_s_texrender.c.o
src/mesa/libmesa_classic.a.p/swrast_s_texture.c.o
src/mesa/libmesa_classic.a.p/swrast_s_triangle.c.o
src/mesa/libmesa_classic.a.p/swrast_s_zoom.c.o
src/mesa/libmesa_classic.a.p/swrast_setup_ss_context.c.o
src/mesa/libmesa_classic.a.p/swrast_setup_ss_triangle.c.o
src/mesa/libmesa_classic.a.p/drivers_common_driverfuncs.c.o
src/mesa/libmesa_classic.a.p/drivers_common_meta_blit.c.o
src/mesa/libmesa_classic.a.p/drivers_common_meta_generate_mipmap.c.o
src/mesa/libmesa_classic.a.p/drivers_common_meta.c.o
src/mesa/libmesa_classic.a.p/x86_x86_xform.c.o
src/mesa/libmesa_classic.a.p/x86_3dnow.c.o
src/mesa/libmesa_classic.a.p/x86_sse.c.o
src/mesa/libmesa_classic.a.p/x86_rtasm_x86sse.c.o
src/mesa/libmesa_classic.a.p/sparc_sparc.c.o
src/mesa/libmesa_classic.a.p/x86-64_x86-64.c.o
ninja: build stopped: subcommand failed.
WARNING:
/home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/temp/run.do_compile.31992:161
exit 1 from 'ninja -v -j 8'
WARNING: Backtrace (BB generated script):
        #1: meson_do_compile,
/home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/temp/run.do_compile.31992,
line 161
        #2: do_compile,
/home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/temp/run.do_compile.31992,
line 156
        #3: main,
/home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/temp/run.do_compile.31992,
line 165

Backtrace (metadata-relative locations):
        #1: meson_do_compile,
/home/morten/vetscan-spe-instrument/poky/meta/classes/meson.bbclass, line
176
        #2: do_compile, autogenerated, line 2
ERROR: Logfile of failure stored in:
/home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/temp/log.do_compile.31992

-- Morten

--000000000000d5894d05c09cf91a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi,<br clear=3D"all"></div><div class=3D"gmail_default"=
 style=3D"font-family:arial,helvetica,sans-serif"><br></div><div class=3D"g=
mail_default" style=3D"font-family:arial,helvetica,sans-serif">I&#39;m upgr=
ading to hardknott. The meta-raspberry layer does not have a hardknott bran=
ch, so I&#39;m building with the master branch.</div><div class=3D"gmail_de=
fault" style=3D"font-family:arial,helvetica,sans-serif"><br></div><div clas=
s=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif">Does a=
nyone know why this error occurs when building mesa-gl?</div><div class=3D"=
gmail_default" style=3D"font-family:arial,helvetica,sans-serif"><br></div><=
div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif=
">ERROR: mesa-gl-2_21.0.1-r0 do_compile: Execution of &#39;/home/morten/yoc=
to/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1=
-r0/temp/run.do_compile.31992&#39; failed with exit code 1:<br>[1/7] arm-po=
ky-linux-gnueabi-g++ -mthumb -mfpu=3Dneon-vfpv4 -mfloat-abi=3Dhard -mcpu=3D=
cortex-a7 -fstack-protector-strong -O2 -D_FORTIFY_SOURCE=3D2 -Wformat -Wfor=
mat-security -Werror=3Dformat-security --sysroot=3D/home/morten/yocto/spe/t=
mp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/reci=
pe-sysroot =C2=A0-o src/gbm/libgbm.so.1.0.0 src/gbm/libgbm.so.1.0.0.p/main_=
backend.c.o src/gbm/libgbm.so.1.0.0.p/main_gbm.c.o -Wl,--as-needed -Wl,--no=
-undefined -shared -fPIC -Wl,--start-group -Wl,-soname,libgbm.so.1 -Wl,-O1 =
-Wl,--hash-style=3Dgnu -Wl,--as-needed -Wl,-z,relro,-z,now src/loader/liblo=
ader.a src/util/libmesa_util.a src/util/format/libmesa_format.a src/util/li=
bxmlconfig.a -Wl,--gc-sections -ldl -pthread /home/morten/yocto/spe/tmp/wor=
k/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/recipe-sys=
root/usr/lib/libz.so -lm /home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-=
vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/recipe-sysroot/usr/lib/libexpa=
t.so /home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnu=
eabi/mesa-gl/2_21.0.1-r0/recipe-sysroot/usr/lib/libdrm.so -Wl,--end-group<b=
r>FAILED: src/gbm/libgbm.so.1.0.0 <br>arm-poky-linux-gnueabi-g++ -mthumb -m=
fpu=3Dneon-vfpv4 -mfloat-abi=3Dhard -mcpu=3Dcortex-a7 -fstack-protector-str=
ong -O2 -D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-s=
ecurity --sysroot=3D/home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4=
-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/recipe-sysroot =C2=A0-o src/gbm/lib=
gbm.so.1.0.0 src/gbm/libgbm.so.1.0.0.p/main_backend.c.o src/gbm/libgbm.so.1=
.0.0.p/main_gbm.c.o -Wl,--as-needed -Wl,--no-undefined -shared -fPIC -Wl,--=
start-group -Wl,-soname,libgbm.so.1 -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as=
-needed -Wl,-z,relro,-z,now src/loader/libloader.a src/util/libmesa_util.a =
src/util/format/libmesa_format.a src/util/libxmlconfig.a -Wl,--gc-sections =
-ldl -pthread /home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-=
linux-gnueabi/mesa-gl/2_21.0.1-r0/recipe-sysroot/usr/lib/libz.so -lm /home/=
morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-g=
l/2_21.0.1-r0/recipe-sysroot/usr/lib/libexpat.so /home/morten/yocto/spe/tmp=
/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/recipe=
-sysroot/usr/lib/libdrm.so -Wl,--end-group<br>/home/morten/yocto/spe/tmp/wo=
rk/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/recipe-sy=
sroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linux-gn=
ueabi/gcc/arm-poky-linux-gnueabi/10.2.0/ld: src/gbm/libgbm.so.1.0.0.p/main_=
backend.c.o: in function `_gbm_create_device&#39;:<br>/usr/src/debug/mesa-g=
l/2_21.0.1-r0/build/../mesa-21.0.1/src/gbm/main/backend.c:104: undefined re=
ference to `gbm_dri_backend&#39;<br>collect2: error: ld returned 1 exit sta=
tus<br>[2/7] /home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-l=
inux-gnueabi/mesa-gl/2_21.0.1-r0/recipe-sysroot-native/usr/bin/python3-nati=
ve/python3 ../mesa-21.0.1/bin/git_sha1_gen.py --output src/git_sha1.h<br>[3=
/4] rm -f src/mesa/libmesa_classic.a &amp;&amp; arm-poky-linux-gnueabi-gcc-=
ar csrD src/mesa/libmesa_classic.a src/mesa/libmesa_classic.a.p/math_m_xfor=
m.c.o src/mesa/libmesa_classic.a.p/tnl_t_context.c.o src/mesa/libmesa_class=
ic.a.p/tnl_t_draw.c.o src/mesa/libmesa_classic.a.p/tnl_t_pipeline.c.o src/m=
esa/libmesa_classic.a.p/tnl_t_rebase.c.o src/mesa/libmesa_classic.a.p/tnl_t=
_split.c.o src/mesa/libmesa_classic.a.p/tnl_t_split_copy.c.o src/mesa/libme=
sa_classic.a.p/tnl_t_split_inplace.c.o src/mesa/libmesa_classic.a.p/tnl_t_v=
b_fog.c.o src/mesa/libmesa_classic.a.p/tnl_t_vb_light.c.o src/mesa/libmesa_=
classic.a.p/tnl_t_vb_normals.c.o src/mesa/libmesa_classic.a.p/tnl_t_vb_poin=
ts.c.o src/mesa/libmesa_classic.a.p/tnl_t_vb_program.c.o src/mesa/libmesa_c=
lassic.a.p/tnl_t_vb_render.c.o src/mesa/libmesa_classic.a.p/tnl_t_vb_texgen=
.c.o src/mesa/libmesa_classic.a.p/tnl_t_vb_texmat.c.o src/mesa/libmesa_clas=
sic.a.p/tnl_t_vb_vertex.c.o src/mesa/libmesa_classic.a.p/tnl_t_vertex.c.o s=
rc/mesa/libmesa_classic.a.p/tnl_t_vertex_generic.c.o src/mesa/libmesa_class=
ic.a.p/tnl_t_vertex_sse.c.o src/mesa/libmesa_classic.a.p/tnl_t_vp_build.c.o=
 src/mesa/libmesa_classic.a.p/swrast_s_aaline.c.o src/mesa/libmesa_classic.=
a.p/swrast_s_aatriangle.c.o src/mesa/libmesa_classic.a.p/swrast_s_alpha.c.o=
 src/mesa/libmesa_classic.a.p/swrast_s_atifragshader.c.o src/mesa/libmesa_c=
lassic.a.p/swrast_s_bitmap.c.o src/mesa/libmesa_classic.a.p/swrast_s_blend.=
c.o src/mesa/libmesa_classic.a.p/swrast_s_blit.c.o src/mesa/libmesa_classic=
.a.p/swrast_s_clear.c.o src/mesa/libmesa_classic.a.p/swrast_s_context.c.o s=
rc/mesa/libmesa_classic.a.p/swrast_s_copypix.c.o src/mesa/libmesa_classic.a=
.p/swrast_s_depth.c.o src/mesa/libmesa_classic.a.p/swrast_s_drawpix.c.o src=
/mesa/libmesa_classic.a.p/swrast_s_feedback.c.o src/mesa/libmesa_classic.a.=
p/swrast_s_fog.c.o src/mesa/libmesa_classic.a.p/swrast_s_fragprog.c.o src/m=
esa/libmesa_classic.a.p/swrast_s_lines.c.o src/mesa/libmesa_classic.a.p/swr=
ast_s_logic.c.o src/mesa/libmesa_classic.a.p/swrast_s_masking.c.o src/mesa/=
libmesa_classic.a.p/swrast_s_points.c.o src/mesa/libmesa_classic.a.p/swrast=
_s_renderbuffer.c.o src/mesa/libmesa_classic.a.p/swrast_s_span.c.o src/mesa=
/libmesa_classic.a.p/swrast_s_stencil.c.o src/mesa/libmesa_classic.a.p/swra=
st_s_texcombine.c.o src/mesa/libmesa_classic.a.p/swrast_s_texfetch.c.o src/=
mesa/libmesa_classic.a.p/swrast_s_texfilter.c.o src/mesa/libmesa_classic.a.=
p/swrast_s_texrender.c.o src/mesa/libmesa_classic.a.p/swrast_s_texture.c.o =
src/mesa/libmesa_classic.a.p/swrast_s_triangle.c.o src/mesa/libmesa_classic=
.a.p/swrast_s_zoom.c.o src/mesa/libmesa_classic.a.p/swrast_setup_ss_context=
.c.o src/mesa/libmesa_classic.a.p/swrast_setup_ss_triangle.c.o src/mesa/lib=
mesa_classic.a.p/drivers_common_driverfuncs.c.o src/mesa/libmesa_classic.a.=
p/drivers_common_meta_blit.c.o src/mesa/libmesa_classic.a.p/drivers_common_=
meta_generate_mipmap.c.o src/mesa/libmesa_classic.a.p/drivers_common_meta.c=
.o src/mesa/libmesa_classic.a.p/x86_x86_xform.c.o src/mesa/libmesa_classic.=
a.p/x86_3dnow.c.o src/mesa/libmesa_classic.a.p/x86_sse.c.o src/mesa/libmesa=
_classic.a.p/x86_rtasm_x86sse.c.o src/mesa/libmesa_classic.a.p/sparc_sparc.=
c.o src/mesa/libmesa_classic.a.p/x86-64_x86-64.c.o<br>ninja: build stopped:=
 subcommand failed.<br>WARNING: /home/morten/yocto/spe/tmp/work/cortexa7t2h=
f-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/temp/run.do_compile.319=
92:161 exit 1 from &#39;ninja -v -j 8&#39;<br>WARNING: Backtrace (BB genera=
ted script): <br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 #1: meson_do_compile, /home/mo=
rten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/=
2_21.0.1-r0/temp/run.do_compile.31992, line 161<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 #2: do_compile, /home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4=
-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/temp/run.do_compile.31992, line 156=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 #3: main, /home/morten/yocto/spe/tmp/work/c=
ortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/temp/run.do_c=
ompile.31992, line 165<br><br>Backtrace (metadata-relative locations):<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 #1: meson_do_compile, /home/morten/vetscan-spe-=
instrument/poky/meta/classes/meson.bbclass, line 176<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 #2: do_compile, autogenerated, line 2<br>ERROR: Logfile of failu=
re stored in: /home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-=
linux-gnueabi/mesa-gl/2_21.0.1-r0/temp/log.do_compile.31992<br></div><div c=
lass=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif"><br=
></div>--<span class=3D"gmail_default" style=3D"font-family:arial,helvetica=
,sans-serif"> </span>M<span class=3D"gmail_default" style=3D"font-family:ar=
ial,helvetica,sans-serif"></span><span class=3D"gmail_default" style=3D"fon=
t-family:arial,helvetica,sans-serif"></span><span class=3D"gmail_default" s=
tyle=3D"font-family:arial,helvetica,sans-serif"></span><span class=3D"gmail=
_default" style=3D"font-family:arial,helvetica,sans-serif">orten</span><br>=
<div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signatur=
e"><div dir=3D"ltr"></div></div></div>

--000000000000d5894d05c09cf91a--
