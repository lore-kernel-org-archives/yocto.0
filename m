Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
 by mx.groups.io with SMTP id smtpd.web12.5716.1619155811907998289
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Apr 2021 22:30:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=WC3LtRq5;
 spf=pass (domain: gmail.com, ip: 209.85.222.171, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f171.google.com with SMTP id 8so14916655qkv.8
        for <yocto@lists.yoctoproject.org>; Thu, 22 Apr 2021 22:30:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=s+HhLdi7LNzWsfF4LmcGcrE9SLoORJnSAiRlq+wffPE=;
        b=WC3LtRq5efmmo6KQashQozPiRAbqzsUm39FllFUhESXBtoCiuDus+kPNxzaTwooG1D
         4Qw6jK1AWngVSDJzhOawvzryd61/W1Uw9mgdv3H000iGL2VDOiyqhNBPPWBApVcFSLKV
         03kupOdkyrpEvKI3tfF6l/s4D7yPd+O4kKgjpoGsySzKklux+apNc5xQyf23lmCmh5hv
         YbnFGPNtrYrLCvTLthxHczvtLdx3ZTg4LhZtO/T8HvYQgHA0IDWeMQG3xbehhRmWH//M
         QSw4EW0A7mZCJyXfNzng08aLDe/1GRsDeP56mFrACT/8Sfi4ZHoz+XCSH4mFGd/AMV5d
         q5VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=s+HhLdi7LNzWsfF4LmcGcrE9SLoORJnSAiRlq+wffPE=;
        b=lJ71synxsL3MMZjy3XJfr1HzKp7aPAlUClBVLFZBKaxwOWdprqUGCMKqaAcnCf9Hdx
         IrIKYznq9TNHpA9ZMGAjcaAWj5itdpz6Gd3CfatYIqvcRQxOrTDDymYL/RfXsmu+pHt9
         7AiYilHxN13iLw3CRbnQw5TTxkCUqw0H2Uo8DbwSX0msAGrg1Pm8IKGRJraljbsuGDeg
         OhC/5MdaOzcQN1ns3jHVip48hfFjFK2S8CqcK4f3BwPSqGJ7T4ZAmI25XPaUX7WASq1t
         B1AEMUQ39oC0toE8QK522j/kW+mrkAQmHIyu+hBTKdzWzToXakGSzJ1LrFV2uRrmnQD3
         ARbA==
X-Gm-Message-State: AOAM532kpwtWKaYwuwYUoixTCLinSMnhR3uMsA2RHpMjfRGzwpQGijNN
	nD1xxbt4zSwmPQXBgQqFi00dVRYcjK7GXli/J+1/eyelFza6fA==
X-Google-Smtp-Source: ABdhPJyoMZ4I/qr/oAIt6CEJuLZUn7OONLr3Hq4PdtKmad1YTde5aYQOVV3WuIn6JRCnntQmLE1UVjs+Cy9474awlaQ=
X-Received: by 2002:a37:8ec4:: with SMTP id q187mr2331026qkd.381.1619155810838;
 Thu, 22 Apr 2021 22:30:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAMrUZLiOVUDxXUXytS4BRmkb+xK7M03i2fE0hoUOW6SEeP7Y8w@mail.gmail.com>
In-Reply-To: <CAMrUZLiOVUDxXUXytS4BRmkb+xK7M03i2fE0hoUOW6SEeP7Y8w@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 22 Apr 2021 22:29:44 -0700
Message-ID: <CAMKF1srY4H8r7damyEMnUmNumVD3HEPh8DwRHBsYCnSDT6ij2A@mail.gmail.com>
Subject: Re: [yocto] Problems building hardknott for raspberri pi
To: Morten Bruun <morten.bruun@apide.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 22, 2021 at 10:22 PM Morten Bruun <morten.bruun@apide.com> wrot=
e:
>
> Hi,
>
> I'm upgrading to hardknott. The meta-raspberry layer does not have a har=
dknott branch, so I'm building with the master branch.
>

I think meta-raspberrypi should branch before mesa-gl restructuring
initiated changes in meta-raspberrypi can you try with
meta-raspberrypi master@d1f191ed3018e0b130311e443f014e30d2f5ed97
and see if it works

> Does anyone know why this error occurs when building mesa-gl?
>
> ERROR: mesa-gl-2_21.0.1-r0 do_compile: Execution of '/home/morten/yocto/=
spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0=
/temp/run.do_compile.31992' failed with exit code 1:
> [1/7] arm-poky-linux-gnueabi-g++ -mthumb -mfpu=3Dneon-vfpv4 -mfloat-abi=
=3Dhard -mcpu=3Dcortex-a7 -fstack-protector-strong -O2 -D_FORTIFY_SOURCE=
=3D2 -Wformat -Wformat-security -Werror=3Dformat-security --sysroot=3D/hom=
e/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa=
-gl/2_21.0.1-r0/recipe-sysroot  -o src/gbm/libgbm.so.1.0.0 src/gbm/libgbm.s=
o.1.0.0.p/main_backend.c.o src/gbm/libgbm.so.1.0.0.p/main_gbm.c.o -Wl,--as-=
needed -Wl,--no-undefined -shared -fPIC -Wl,--start-group -Wl,-soname,libgb=
m.so.1 -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -Wl,-z,relro,-z,now s=
rc/loader/libloader.a src/util/libmesa_util.a src/util/format/libmesa_forma=
t.a src/util/libxmlconfig.a -Wl,--gc-sections -ldl -pthread /home/morten/yo=
cto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.=
1-r0/recipe-sysroot/usr/lib/libz.so -lm /home/morten/yocto/spe/tmp/work/cor=
texa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/recipe-sysroot/=
usr/lib/libexpat.so /home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4=
-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/recipe-sysroot/usr/lib/libdrm.so -W=
l,--end-group
> FAILED: src/gbm/libgbm.so.1.0.0
> arm-poky-linux-gnueabi-g++ -mthumb -mfpu=3Dneon-vfpv4 -mfloat-abi=3Dhard=
 -mcpu=3Dcortex-a7 -fstack-protector-strong -O2 -D_FORTIFY_SOURCE=3D2 -Wfor=
mat -Wformat-security -Werror=3Dformat-security --sysroot=3D/home/morten/yo=
cto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.=
1-r0/recipe-sysroot  -o src/gbm/libgbm.so.1.0.0 src/gbm/libgbm.so.1.0.0.p/m=
ain_backend.c.o src/gbm/libgbm.so.1.0.0.p/main_gbm.c.o -Wl,--as-needed -Wl,=
--no-undefined -shared -fPIC -Wl,--start-group -Wl,-soname,libgbm.so.1 -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -Wl,-z,relro,-z,now src/loader/l=
ibloader.a src/util/libmesa_util.a src/util/format/libmesa_format.a src/uti=
l/libxmlconfig.a -Wl,--gc-sections -ldl -pthread /home/morten/yocto/spe/tmp=
/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/recipe=
-sysroot/usr/lib/libz.so -lm /home/morten/yocto/spe/tmp/work/cortexa7t2hf-n=
eon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/recipe-sysroot/usr/lib/lib=
expat.so /home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux=
-gnueabi/mesa-gl/2_21.0.1-r0/recipe-sysroot/usr/lib/libdrm.so -Wl,--end-gro=
up
> /home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnuea=
bi/mesa-gl/2_21.0.1-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi=
/../../libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/10.2.0/ld:=
 src/gbm/libgbm.so.1.0.0.p/main_backend.c.o: in function `_gbm_create_devic=
e':
> /usr/src/debug/mesa-gl/2_21.0.1-r0/build/../mesa-21.0.1/src/gbm/main/bac=
kend.c:104: undefined reference to `gbm_dri_backend'
> collect2: error: ld returned 1 exit status
> [2/7] /home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux=
-gnueabi/mesa-gl/2_21.0.1-r0/recipe-sysroot-native/usr/bin/python3-native/p=
ython3 ../mesa-21.0.1/bin/git_sha1_gen.py --output src/git_sha1.h
> [3/4] rm -f src/mesa/libmesa_classic.a && arm-poky-linux-gnueabi-gcc-ar =
csrD src/mesa/libmesa_classic.a src/mesa/libmesa_classic.a.p/math_m_xform.c=
.o src/mesa/libmesa_classic.a.p/tnl_t_context.c.o src/mesa/libmesa_classic.=
a.p/tnl_t_draw.c.o src/mesa/libmesa_classic.a.p/tnl_t_pipeline.c.o src/mesa=
/libmesa_classic.a.p/tnl_t_rebase.c.o src/mesa/libmesa_classic.a.p/tnl_t_sp=
lit.c.o src/mesa/libmesa_classic.a.p/tnl_t_split_copy.c.o src/mesa/libmesa_=
classic.a.p/tnl_t_split_inplace.c.o src/mesa/libmesa_classic.a.p/tnl_t_vb_f=
og.c.o src/mesa/libmesa_classic.a.p/tnl_t_vb_light.c.o src/mesa/libmesa_cla=
ssic.a.p/tnl_t_vb_normals.c.o src/mesa/libmesa_classic.a.p/tnl_t_vb_points.=
c.o src/mesa/libmesa_classic.a.p/tnl_t_vb_program.c.o src/mesa/libmesa_clas=
sic.a.p/tnl_t_vb_render.c.o src/mesa/libmesa_classic.a.p/tnl_t_vb_texgen.c.=
o src/mesa/libmesa_classic.a.p/tnl_t_vb_texmat.c.o src/mesa/libmesa_classic=
.a.p/tnl_t_vb_vertex.c.o src/mesa/libmesa_classic.a.p/tnl_t_vertex.c.o src/=
mesa/libmesa_classic.a.p/tnl_t_vertex_generic.c.o src/mesa/libmesa_classic.=
a.p/tnl_t_vertex_sse.c.o src/mesa/libmesa_classic.a.p/tnl_t_vp_build.c.o sr=
c/mesa/libmesa_classic.a.p/swrast_s_aaline.c.o src/mesa/libmesa_classic.a.p=
/swrast_s_aatriangle.c.o src/mesa/libmesa_classic.a.p/swrast_s_alpha.c.o sr=
c/mesa/libmesa_classic.a.p/swrast_s_atifragshader.c.o src/mesa/libmesa_clas=
sic.a.p/swrast_s_bitmap.c.o src/mesa/libmesa_classic.a.p/swrast_s_blend.c.o=
 src/mesa/libmesa_classic.a.p/swrast_s_blit.c.o src/mesa/libmesa_classic.a.=
p/swrast_s_clear.c.o src/mesa/libmesa_classic.a.p/swrast_s_context.c.o src/=
mesa/libmesa_classic.a.p/swrast_s_copypix.c.o src/mesa/libmesa_classic.a.p/=
swrast_s_depth.c.o src/mesa/libmesa_classic.a.p/swrast_s_drawpix.c.o src/me=
sa/libmesa_classic.a.p/swrast_s_feedback.c.o src/mesa/libmesa_classic.a.p/s=
wrast_s_fog.c.o src/mesa/libmesa_classic.a.p/swrast_s_fragprog.c.o src/mesa=
/libmesa_classic.a.p/swrast_s_lines.c.o src/mesa/libmesa_classic.a.p/swrast=
_s_logic.c.o src/mesa/libmesa_classic.a.p/swrast_s_masking.c.o src/mesa/lib=
mesa_classic.a.p/swrast_s_points.c.o src/mesa/libmesa_classic.a.p/swrast_s_=
renderbuffer.c.o src/mesa/libmesa_classic.a.p/swrast_s_span.c.o src/mesa/li=
bmesa_classic.a.p/swrast_s_stencil.c.o src/mesa/libmesa_classic.a.p/swrast_=
s_texcombine.c.o src/mesa/libmesa_classic.a.p/swrast_s_texfetch.c.o src/mes=
a/libmesa_classic.a.p/swrast_s_texfilter.c.o src/mesa/libmesa_classic.a.p/s=
wrast_s_texrender.c.o src/mesa/libmesa_classic.a.p/swrast_s_texture.c.o src=
/mesa/libmesa_classic.a.p/swrast_s_triangle.c.o src/mesa/libmesa_classic.a.=
p/swrast_s_zoom.c.o src/mesa/libmesa_classic.a.p/swrast_setup_ss_context.c.=
o src/mesa/libmesa_classic.a.p/swrast_setup_ss_triangle.c.o src/mesa/libmes=
a_classic.a.p/drivers_common_driverfuncs.c.o src/mesa/libmesa_classic.a.p/d=
rivers_common_meta_blit.c.o src/mesa/libmesa_classic.a.p/drivers_common_met=
a_generate_mipmap.c.o src/mesa/libmesa_classic.a.p/drivers_common_meta.c.o =
src/mesa/libmesa_classic.a.p/x86_x86_xform.c.o src/mesa/libmesa_classic.a.p=
/x86_3dnow.c.o src/mesa/libmesa_classic.a.p/x86_sse.c.o src/mesa/libmesa_cl=
assic.a.p/x86_rtasm_x86sse.c.o src/mesa/libmesa_classic.a.p/sparc_sparc.c.o=
 src/mesa/libmesa_classic.a.p/x86-64_x86-64.c.o
> ninja: build stopped: subcommand failed.
> WARNING: /home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv4-poky-li=
nux-gnueabi/mesa-gl/2_21.0.1-r0/temp/run.do_compile.31992:161 exit 1 from '=
ninja -v -j 8'
> WARNING: Backtrace (BB generated script):
>         #1: meson_do_compile, /home/morten/yocto/spe/tmp/work/cortexa7t2=
hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/temp/run.do_compile.31=
992, line 161
>         #2: do_compile, /home/morten/yocto/spe/tmp/work/cortexa7t2hf-neo=
n-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/temp/run.do_compile.31992, l=
ine 156
>         #3: main, /home/morten/yocto/spe/tmp/work/cortexa7t2hf-neon-vfpv=
4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/temp/run.do_compile.31992, line 16=
5
>
> Backtrace (metadata-relative locations):
>         #1: meson_do_compile, /home/morten/vetscan-spe-instrument/poky/m=
eta/classes/meson.bbclass, line 176
>         #2: do_compile, autogenerated, line 2
> ERROR: Logfile of failure stored in: /home/morten/yocto/spe/tmp/work/cor=
texa7t2hf-neon-vfpv4-poky-linux-gnueabi/mesa-gl/2_21.0.1-r0/temp/log.do_com=
pile.31992
>
> -- Morten
>
>=20
>
