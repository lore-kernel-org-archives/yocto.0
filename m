Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
 by mx.groups.io with SMTP id smtpd.web11.737.1588356766075499709
 for <yocto@lists.yoctoproject.org>;
 Fri, 01 May 2020 11:12:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=axLLDlsP;
 spf=pass (domain: gmail.com, ip: 209.85.222.182, mailfrom: dresser.net@gmail.com)
Received: by mail-qk1-f182.google.com with SMTP id s63so10061136qke.4
        for <yocto@lists.yoctoproject.org>; Fri, 01 May 2020 11:12:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=ZWTHVDpqgsGLKLJQMlqP4hri43PE6zIXd29HwYrkBIU=;
        b=axLLDlsPVDr2mFhF772xAK6muYYhRksTXEu/ryyH0up6OxqL7Qqv54atMYOPpTRKzv
         4UXbj56FEf3nfZBKZ8C+235ozY/HixeWHdUW1TJxddDiBEPYP/btJepami3YMd2zwSgz
         iEGT82/uDBjeTzSEgktN6L9QNrRz5gc36nIeuXSkl6PICxIiY7ht3GLD4a1XPY/XMMUu
         BdgWHPlfgCPbiRxyFjvwu0XpY5m+vewkszTxYMa2XlBELIR88MetPd6GjM2aDkKIPsXz
         5DnPnNIWT6GuGz7DL+Sm1z86uUcNrDOhBnpmXDEnEJ4tmgoSBSM1DCgL/u1REYYEvkAJ
         n3Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ZWTHVDpqgsGLKLJQMlqP4hri43PE6zIXd29HwYrkBIU=;
        b=VhznVLBwb79VLOiak+HfHnmFF8sKCT7c/ZZuyuBhCKFoX1zZIT3SOhg0EBF1yMiW7F
         ZLZTCLTi4f67hunyZsannHsTNDWm8L7eDzXnJLjeN01C+30CLA1/40xmvpii6OuoSACM
         ZRrC56Pl2yH6w0vNo4zW8M4lAWVajr/68TDTkgpnYrigxihut9+d8Wk8SF4AHOWRFVSj
         osbtDo/TTPTLg5/KCgjJc4BSv2mGlhAOx2lyNQ8B0hO9REz5nyIlocc7ShUZmYFkb6gJ
         u0srZD1AE9cg/mgfpqS3gyNByx2TmbmDt+YyQ2iMIbwHVYiipLEZhLQZ1OqPodzb8arQ
         zfHA==
X-Gm-Message-State: AGi0PuZA5HnjyUPgB/vVocXWrOpOMvb9f1zLHEd5H0zBM+caN8AlCwFl
	464OMH/qNwGEaeej94bBtNtKzbocncaQtNu5Vh8cVAxx
X-Google-Smtp-Source: APiQypLTAkRgnYXu0HBl6kbbdEoz60aO3QvwVyxoSJmZz9nv5B6X/fdsJu2YWp3DdM3fYwuffQZCGLrmesDO1oR/CHY=
X-Received: by 2002:a37:9f15:: with SMTP id i21mr4762859qke.47.1588356764886;
 Fri, 01 May 2020 11:12:44 -0700 (PDT)
MIME-Version: 1.0
From: "Derek Dresser" <dresser.net@gmail.com>
Date: Fri, 1 May 2020 14:12:34 -0400
Message-ID: <CADmsHKfnS-=5LFhT_47q63Km6RHz=8TbNF=OiDCZhiAxP6i5YQ@mail.gmail.com>
Subject: qemu hangs waiting for root device /dev/mmcblk0p2
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000bf6b1b05a49a2060"

--000000000000bf6b1b05a49a2060
Content-Type: text/plain; charset="UTF-8"

Based on my investigation so far, I believe this is a devicetree issue.  My
understanding of devicetrees at the moment is rudimentary.  Please don't
assume I might know something basic.

I am working with a custom board based on the Xilinx zcu102-zynqmp
(aarch64) board.  The build currently boots and runs fine on the actual
board.  When I try to use runqemu to start an emulator, it hangs at
"waiting for root device /dev/mmcblk0p2"  I have seen posts that suggest
this is a problem with mmc0 card detection like a wrong pin or something.
Some posts suggest it can be worked around by adding "broken-cd" to the
device configuration, telling the OS not to wait for the card detection.

To test this, I tried to modify the flattened devicetree from uboot  and
boot with the "broken-cd" configuration, but it continues to hang at the
same place.


aliases {
     ...
     mmc0 = "/amba/sdhci@ff160000";
     ...
}

runqemu slirp zcu102-zynqmp.....

ZynqMP> setenv bootargs $bootargs root=/dev/mmcblk0p2 rw rootwait earlycon
clk_ignore_unused
ZynqMP> fatload mmc 0 0x4000000 devicetree-gen5.dtb
ZynqMP> fatload mmc $sdbootdev:$partid 0x80000 Image        #(sdbootdev=0,
partid=auto)

ZynqMP> fdt addr 0x4000000

ZynqMP> fdt resize 1024

ZynqMP> fdt set /amba/sdhci@ff160000 broken-cd
ZynqMP> fdt list /amba/sdhci@ff160000
sdhci@ff160000 {
        broken-cd;
        u-boot,dm-pre-reloc;
        compatible = "xlnx,zynqmp-8.9a", "arasan,sdhci-8.9a";
        status = "okay";
        interrupt-parent = <0x00000004>;
        interrupts = <0x00000000 0x00000030 0x00000004>;
        reg = <0x00000000 0xff160000 0x00000000 0x00001000>;
        clock-names = "clk_xin", "clk_ahb";
        xlnx,device_id = <0x00000000>;
        #stream-id-cells = <0x00000001>;
        iommus = <0x00000009 0x00000870>;
        power-domains = <0x0000001f>;
        nvmem-cells = <0x0000001c>;
        nvmem-cell-names = "soc_revision";
        clocks = <0x00000003 0x00000036 0x00000003 0x0000001f>;
        pinctrl-names = "default";
        pinctrl-0 = <0x00000020>;
        xlnx,mio_bank = <0x00000000>;
};
ZynqMP> booti 0x80000 - 0x4000000
....
.... waiting for root device /dev/mmcblk0p2 ....


I also tried building a non-custom build for the zcu102-zynqmp board and it
boots fine in qemu so this is definitely related to my devicetree or
configurations.

I have a bunch of questiions.  Any help is appreciated.

What changes might I need to make to get this to boot in qemu?
Should I expect to need a different devicetree for qemu than for the custom
board?
How can I know what the differences should be?
How do I specify a different devicetree for qemu if necessary?

Thank you,
Derek

--000000000000bf6b1b05a49a2060
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Based on my investigation so far, I believe this is a=
 devicetree=C2=A0issue.=C2=A0 My understanding of devicetrees=C2=A0at the m=
oment is rudimentary.=C2=A0 Please don&#39;t assume I might know something =
basic.</div><div><br></div><div>I am working with a custom board based on t=
he Xilinx zcu102-zynqmp (aarch64) board.=C2=A0 The build currently boots an=
d runs fine on the actual board.=C2=A0 When I try to use runqemu to start a=
n emulator, it hangs at &quot;waiting for root device /dev/mmcblk0p2&quot;=
=C2=A0 I have seen posts that suggest this is a problem with mmc0 card dete=
ction like a wrong pin or something.=C2=A0 Some posts suggest it can be wor=
ked around by adding &quot;broken-cd&quot; to the device configuration, tel=
ling the OS not to wait for the card detection.</div><div><br></div><div>To=
 test this, I tried to modify the flattened devicetree=C2=A0from uboot=C2=
=A0 and boot with the &quot;broken-cd&quot; configuration, but it continues=
 to hang at the same place.=C2=A0=C2=A0</div><div><blockquote style=3D"marg=
in:0 0 0 40px;border:none;padding:0px"><br></blockquote></div><blockquote s=
tyle=3D"margin:0 0 0 40px;border:none;padding:0px"><div><div>aliases {</div=
></div><div><div>=C2=A0 =C2=A0 =C2=A0...</div></div><div><div>=C2=A0 =C2=A0=
 =C2=A0mmc0 =3D &quot;/amba/sdhci@ff160000&quot;;</div></div><div><div>=C2=
=A0 =C2=A0 =C2=A0...</div></div><div><div>}</div></div><div><div><br></div>=
</div></blockquote><blockquote style=3D"margin:0 0 0 40px;border:none;paddi=
ng:0px"><div>runqemu slirp zcu102-zynqmp.....</div><div><br></div></blockqu=
ote><blockquote style=3D"margin:0 0 0 40px;border:none;padding:0px"><div>Zy=
nqMP&gt;=C2=A0setenv bootargs $bootargs root=3D/dev/mmcblk0p2 rw rootwait e=
arlycon clk_ignore_unused</div><div><div>ZynqMP&gt; fatload mmc 0 0x4000000=
 devicetree-gen5.dtb</div></div><div><div>ZynqMP&gt; fatload mmc $sdbootdev=
:$partid 0x80000 Image=C2=A0 =C2=A0 =C2=A0 =C2=A0 #(sdbootdev=3D0, partid=
=3Dauto)</div></div></blockquote><blockquote style=3D"margin:0 0 0 40px;bor=
der:none;padding:0px"><div>ZynqMP&gt; fdt addr 0x4000000</div></blockquote>=
<blockquote style=3D"margin:0 0 0 40px;border:none;padding:0px"><div>ZynqMP=
&gt; fdt resize 1024</div></blockquote><blockquote style=3D"margin:0 0 0 40=
px;border:none;padding:0px"><div><div>ZynqMP&gt; fdt set /amba/sdhci@ff1600=
00 broken-cd</div></div><div><div>ZynqMP&gt; fdt list /amba/sdhci@ff160000 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 </div></div><div><div>sdhci@ff160000 {</div></d=
iv><div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 broken-cd;</div></div><div><div>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u-boot,dm-pre-reloc;</div></div><div><div>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 compatible =3D &quot;xlnx,zynqmp-8.9a&quot;, &quot=
;arasan,sdhci-8.9a&quot;;</div></div><div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
status =3D &quot;okay&quot;;</div></div><div><div>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 interrupt-parent =3D &lt;0x00000004&gt;;</div></div><div><div>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 interrupts =3D &lt;0x00000000 0x00000030 0x00000004&gt=
;;</div></div><div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 reg =3D &lt;0x00000000 =
0xff160000 0x00000000 0x00001000&gt;;</div></div><div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 clock-names =3D &quot;clk_xin&quot;, &quot;clk_ahb&quot;;</di=
v></div><div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 xlnx,device_id =3D &lt;0x0000=
0000&gt;;</div></div><div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 #stream-id-cells=
 =3D &lt;0x00000001&gt;;</div></div><div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 i=
ommus =3D &lt;0x00000009 0x00000870&gt;;</div></div><div><div>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 power-domains =3D &lt;0x0000001f&gt;;</div></div><div><div>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 nvmem-cells =3D &lt;0x0000001c&gt;;</div></div>=
<div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 nvmem-cell-names =3D &quot;soc_revisi=
on&quot;;</div></div><div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 clocks =3D &lt;0=
x00000003 0x00000036 0x00000003 0x0000001f&gt;;</div></div><div><div>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 pinctrl-names =3D &quot;default&quot;;</div></div><di=
v><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 pinctrl-0 =3D &lt;0x00000020&gt;;</div><=
/div><div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 xlnx,mio_bank =3D &lt;0x00000000=
&gt;;</div></div><div><div>};</div></div><div><div>ZynqMP&gt;=C2=A0booti 0x=
80000 - 0x4000000</div></div><div><div>....</div></div><div><div>.... waiti=
ng for root device /dev/mmcblk0p2 ....</div></div></blockquote><div><br></d=
iv><div>I also tried building a non-custom build for the zcu102-zynqmp boar=
d and it boots fine in qemu so this is definitely related to my devicetree =
or configurations.</div><div><br></div><div>I have a bunch of questiions.=
=C2=A0 Any help is appreciated.</div><div><br></div><div>What changes might=
 I need to make to get this to boot in qemu?</div><div>Should I expect to n=
eed a different devicetree=C2=A0for qemu than for the custom board?=C2=A0=
=C2=A0</div><div>How can I know what the differences should be?=C2=A0=C2=A0=
</div><div>How do I specify a different devicetree=C2=A0for qemu if necessa=
ry?</div><div><br></div><div>Thank you,</div><div>Derek</div><div><br></div=
><div><br></div><div><br></div></div>

--000000000000bf6b1b05a49a2060--
