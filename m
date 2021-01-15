Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
 by mx.groups.io with SMTP id smtpd.web10.101.1610746829847319317
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Jan 2021 13:40:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TD+VE9Jo;
 spf=pass (domain: gmail.com, ip: 209.85.160.175, mailfrom: theaethereal@gmail.com)
Received: by mail-qt1-f175.google.com with SMTP id h19so7098535qtq.13
        for <yocto@lists.yoctoproject.org>; Fri, 15 Jan 2021 13:40:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=l0tw0+UqoGnMWNzocIffvsu0gw7u69n98KWy2BwuvdA=;
        b=TD+VE9JoyZIVDaewqW1BUEu7vs3Nw54e92d2uE4FtahppecdYhTxKyRZkYRD1zGqMS
         0uHv31iz9pGDjr+bZnIHTMRaDP6T1zXzjzldziFzAdZTpGfqHB/AkRBk19LCeWQZzXfH
         qnDChmK8u7kBle2CIhea+jlkEfm8OL8sHqLCBCal2M+Uy8QV5KptE+DUR9KlUHKHMvmS
         f86+TQy5dEXcwQTDNXpbJE+MjvKCn7B9n1QA3JyFy3tzc8fH3vXUbB45WDGJOsp5iS7A
         W37kYT+mt5/6XLzB+k23CrHLsxPs47awpRF1L4Bd3f9y4JVXvWr1nc0kWa5bfDznIsYF
         BcWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=l0tw0+UqoGnMWNzocIffvsu0gw7u69n98KWy2BwuvdA=;
        b=ADEDIAhjulactRP/6ALmWzBDehZDVlMaM2/oARSEXr0SnYDUnGGmPw1oGmNJPzT8a1
         UHE+EmtEPTPakfUgtnfMOfK+sjAh8Xab8K/jQM5nHve5vsfxqwgd9Bz0ER5l/n5KhJQ5
         HxXmISHK0v2joRr4ScNRRcG7QEeq5Qa65ti7AWtulTZHPduW10CFUj4+YdoDs45gwVpK
         luZWD1sbvmyEtc+6bh8c1iuCwSBerqP+6x9bHTexvlh9mkZYA8cF8W0aXPEA1C2eL3uO
         E8t0xDuLmKP0cKmI+Hg0T+ZPsMKf7vqk+mZmgt9lp44mVt42nW17S8ZbdXPgsroZXcmP
         P6dg==
X-Gm-Message-State: AOAM530PFs1kywnARuqKzavpAIA1XHmoxKeIrnpsNhVv+sffE38suHw8
	3kTVzhj1Hlb3updTLil0g39eD5SneyuMKJMixG/AHJ0LZg==
X-Google-Smtp-Source: ABdhPJw1Df7DJgwER8vSWhWpTL8wuRV7yKsdTZywht5giKtvc0F5Dch9wT86F6CiR+4r36Iqb8tRIYA5h3+s/hZa4vg=
X-Received: by 2002:ac8:70c1:: with SMTP id g1mr13769908qtp.108.1610746828649;
 Fri, 15 Jan 2021 13:40:28 -0800 (PST)
MIME-Version: 1.0
From: "Dave Tucker" <theaethereal@gmail.com>
Date: Fri, 15 Jan 2021 16:40:17 -0500
Message-ID: <CAOqi=Cu3t04-UnFFUoCCeKcPS+c02Y=+pwo5o-SKGoWbGo9VZg@mail.gmail.com>
Subject: Can't Build Read-Only RootFS
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000008b795805b8f738a6"

--0000000000008b795805b8f738a6
Content-Type: text/plain; charset="UTF-8"

 I'm trying to build yocto for a Beaglebone Black.  I was setting the file
system to be read-only in /etc/fstab, and that was causing the boot process
to lock up as of my latest build when I switched to dunfell.  So I added
IMAGE_FEATURES += "read-only-rootfs" to my local.conf, which I believe is
the correct way to handle this.  But now the system won't build.  I get the
following output:

NOTE: recipe core-image-minimal-1.0-r0: task do_rootfs: Started
ERROR: core-image-minimal-1.0-r0 do_rootfs: The following packages could
not be configured offline and rootfs is read-only: ['sysvinit-inittab']
ERROR: Logfile of failure stored in:
/data/dunfell-bbb/build/bbb/tmp/work/beaglebone_yocto-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.10987

NOTE: recipe core-image-minimal-1.0-r0: task do_rootfs: Failed
I've not been able to find any information on this issue and am not sure
how to proceed.  Could someone please point me in the right direction?

Here are my local.conf <https://pastebin.com/raw/cjbJXD8K> and bblayers.conf
<https://pastebin.com/raw/giXATtkG>.

Thanks,

Dave

--0000000000008b795805b8f738a6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">
<div>I&#39;m trying to build yocto for a Beaglebone Black.=C2=A0 I was sett=
ing=20
the file system to be read-only in /etc/fstab, and that was causing the=20
boot process to lock up as of my latest build when I switched to=20
dunfell.=C2=A0 So I added IMAGE_FEATURES +=3D &quot;read-only-rootfs&quot; =
to my=20
local.conf, which I believe is the correct way to handle this.=C2=A0 But no=
w=20
the system won&#39;t build.=C2=A0 I get the following output:</div><div><br=
></div><div>

<div style=3D"box-sizing:inherit;overflow:hidden;width:1992px;height:20px">=
<div style=3D"box-sizing:inherit;display:flex;padding:0px 12px;white-space:=
pre-wrap"><span style=3D"box-sizing:inherit;display:flex"><span style=3D"bo=
x-sizing:inherit;word-break:break-all;margin-left:20px;margin-right:12px"><=
span style=3D"box-sizing:inherit"><span style=3D"box-sizing:inherit"><span =
style=3D"box-sizing:inherit">NOTE: recipe core-image-minimal-1.0-r0: task d=
o_rootfs: Started
</span></span></span></span><span style=3D"box-sizing:inherit;height:20px;m=
argin-right:25px"><span style=3D"box-sizing:inherit;font-size:0.875rem;disp=
lay:inline-flex;font-family:AzureDevOpsMDL2Assets"></span></span></span></d=
iv></div><div style=3D"box-sizing:inherit;overflow:hidden;width:1992px;heig=
ht:20px"><div style=3D"box-sizing:inherit;display:flex;padding:0px 12px;whi=
te-space:pre-wrap"><span style=3D"box-sizing:inherit;display:flex"><span st=
yle=3D"box-sizing:inherit;text-align:right;padding-left:20px;min-width:33px=
"></span><span style=3D"box-sizing:inherit;word-break:break-all;margin-left=
:20px;margin-right:12px"><span style=3D"box-sizing:inherit"><span style=3D"=
box-sizing:inherit"><span style=3D"box-sizing:inherit">ERROR: core-image-mi=
nimal-1.0-r0 do_rootfs: The following packages could not be configured offl=
ine and rootfs is read-only: [&#39;sysvinit-inittab&#39;]
</span></span></span></span><span style=3D"box-sizing:inherit;height:20px;m=
argin-right:25px"><span style=3D"box-sizing:inherit;font-size:0.875rem;disp=
lay:inline-flex;font-family:AzureDevOpsMDL2Assets"></span></span></span></d=
iv></div><div style=3D"box-sizing:inherit;overflow:hidden;width:1992px;heig=
ht:20px"><div style=3D"box-sizing:inherit;display:flex;padding:0px 12px;whi=
te-space:pre-wrap"><span style=3D"box-sizing:inherit;display:flex"><span st=
yle=3D"box-sizing:inherit;text-align:right;padding-left:20px;min-width:33px=
"></span><span style=3D"box-sizing:inherit;word-break:break-all;margin-left=
:20px;margin-right:12px"><span style=3D"box-sizing:inherit"><span style=3D"=
box-sizing:inherit"><span style=3D"box-sizing:inherit">ERROR: Logfile of fa=
ilure stored in: /data/dunfell-bbb/build/bbb/tmp/work/beaglebone_yocto-poky=
-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.10987
</span></span></span></span><span style=3D"box-sizing:inherit;height:20px;m=
argin-right:25px"><span style=3D"box-sizing:inherit;font-size:0.875rem;disp=
lay:inline-flex;font-family:AzureDevOpsMDL2Assets"></span></span></span></d=
iv></div><div style=3D"box-sizing:inherit;overflow:hidden;width:1992px;heig=
ht:20px"><div style=3D"box-sizing:inherit;display:flex;padding:0px 12px;whi=
te-space:pre-wrap"><span style=3D"box-sizing:inherit;display:flex"><span st=
yle=3D"box-sizing:inherit;text-align:right;padding-left:20px;min-width:33px=
"></span><span style=3D"box-sizing:inherit;word-break:break-all;margin-left=
:20px;margin-right:12px"><span style=3D"box-sizing:inherit"><span style=3D"=
box-sizing:inherit"><span style=3D"box-sizing:inherit">NOTE: recipe core-im=
age-minimal-1.0-r0: task do_rootfs: Failed
</span></span></span></span><span style=3D"box-sizing:inherit;height:20px;m=
argin-right:25px"><span style=3D"box-sizing:inherit;font-size:0.875rem;disp=
lay:inline-flex;font-family:AzureDevOpsMDL2Assets"></span></span></span></d=
iv></div><div style=3D"box-sizing:inherit;overflow:hidden;width:1992px;heig=
ht:20px"><div style=3D"box-sizing:inherit;display:flex;padding:0px 12px;whi=
te-space:pre-wrap"><span style=3D"box-sizing:inherit;display:flex"><span st=
yle=3D"box-sizing:inherit;text-align:right;padding-left:20px;min-width:33px=
;font-family:Menlo,Consolas,&quot;Courier New&quot;,monospace;font-size:12p=
x;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;=
font-weight:400;letter-spacing:normal;text-indent:0px;text-transform:none;w=
hite-space:pre-wrap;word-spacing:0px;background-color:rgb(32,31,30);text-de=
coration-style:initial;text-decoration-color:initial"></span>

</span></div></div></div><div>I&#39;ve not been able to find any informatio=
n
 on this issue and am not sure how to proceed.=C2=A0 Could someone please=
=20
point me in the right direction?</div><div><br></div><div>Here are my <a hr=
ef=3D"https://pastebin.com/raw/cjbJXD8K" target=3D"_blank">local.conf</a> a=
nd <a href=3D"https://pastebin.com/raw/giXATtkG" target=3D"_blank">bblayers=
.conf</a>.</div><div><br></div><div>Thanks,</div><div><br></div><div>Dave</=
div>

</div>

--0000000000008b795805b8f738a6--
