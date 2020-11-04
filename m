Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
 by mx.groups.io with SMTP id smtpd.web08.11079.1604485586237236217
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Nov 2020 02:26:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@apide.com header.s=google header.b=JdcDmdXi;
 spf=pass (domain: apide.com, ip: 209.85.222.175, mailfrom: morten.bruun@apide.com)
Received: by mail-qk1-f175.google.com with SMTP id z6so18679986qkz.4
        for <yocto@lists.yoctoproject.org>; Wed, 04 Nov 2020 02:26:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apide.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=lGaS6p2KMi7wIWR6LtBswqWB59gEWz5NYkfSWdCFI3k=;
        b=JdcDmdXitZTo2Cid4wBc82RTki2lhIAww5LTeqqcukX5Eg9x7KS7lFpJgyDWWo/l2R
         QXrPuT0t6Y/YzicZamQVrOUGD7ZdhSGdSX9x3AUrHEz+bGhybIjutsKfT4gOIUWEqJHe
         /+u2w/quN5mBAm8OuyPZAw5iVdf3aRuzCJNGg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=lGaS6p2KMi7wIWR6LtBswqWB59gEWz5NYkfSWdCFI3k=;
        b=nSSaYn5AT3v6RcSrFgzNpzlBBexPxhecRcaCjg3TyPTpY6i82u+plPoOtN5Kg8Ml9K
         GMfUgKPPi6c4EvWGKuA0QPtdaIg/OuEiNgEqk9yHPnc6C8ldUGfLgVVoskb57zeUOBzK
         wh3Z0BD6QkytXWMcw22OpOVi7a5xd7zD8tvadjr/UUsNRZv/dt2GKIg6yrL0mad68D/s
         bxSGCMIpcpvB9v2SRXSPMIlE28yelJyTNarEQsCV1xjtoxhjoNqotysmAGDq2T7lT4G0
         VPP8CHBaCxFk8DGJlHEC6awtUW6I5ff62ZbmS4Evt1EQQCR+EEVYAyvRdx9I9PYoZX9t
         N7ew==
X-Gm-Message-State: AOAM533+LIQxUFnjA8JLOjFqUQSEInG46SVo+Qf8ndJVO7Xfq4cOipAU
	Qaqg+TpiW8KLAgdo907qozSe5iZwFtrENgwJNC/37FIUZE2lZtwk
X-Google-Smtp-Source: ABdhPJyMJMYhS7Bd45VqOwGIN3YAnGgkp6fDQurVqROaSgw5yr8r7qT1/iefGcYP9lqbk50vnr739P54XKVtK0wZ85Q=
X-Received: by 2002:a37:aa45:: with SMTP id t66mr15641276qke.168.1604485584930;
 Wed, 04 Nov 2020 02:26:24 -0800 (PST)
MIME-Version: 1.0
From: "Morten Bruun" <morten.bruun@apide.com>
Date: Wed, 4 Nov 2020 11:26:14 +0100
Message-ID: <CAMrUZLjTXQXkS+1nM7KPhLrmEkVRtZ4mYKO0CF59phWOyvWqUw@mail.gmail.com>
Subject: Why is the base-files recipe different?
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000056633205b345699d"

--00000000000056633205b345699d
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm trying to install different fstab files based on the image being built.
As far as I can tell this should be possible by using BBCLASSEXTEND.

The error I get is:

Error: Transaction check error:
  file /etc/fstab conflicts between attempted installs of
base-files-foo-3.0.14-r89.raspberrypi3 and
base-files-3.0.14-r89.raspberrypi3

If I do the exact same thing with the iptables recipe - it works perfectly.
Why is base-files different?

Any help is much appreciated,
Morten

Here is what I have done:
-----------------------------------

Created foo.class:

CLASSOVERRIDE .= ":class-foo"

python foo_virtclass_handler () {
    # Do nothing if this is inherited, as it's for BBCLASSEXTEND
    if "foo" not in (d.getVar('BBCLASSEXTEND') or ""):
        bb.error("Don't inherit foo, use BBCLASSEXTEND")
        return

    # Restore BPN
    bpn = d.getVar('BPN')
    newbpn = bpn.replace('-foo', '')
    d.setVar('BPN', newbpn)

    # Use default FILESPATH searching for patches and files
    filespath = d.getVar('FILESPATH', True)
    newfilespath = filespath.replace('-foo', '')
    d.setVar('FILESPATH', newfilespath)
}

addhandler foo_virtclass_handler
foo_virtclass_handler[eventmask] = "bb.event.RecipePreFinalise"

============================================================

Added base-files_3.0.14.bbappend:

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

BBCLASSEXTEND = "foo"

SRC_URI_append_class-foo = " file://fstab.foo "

do_install_append_class-foo () {
    install -d ${D}${sysconfdir}
    install -m 644 ${WORKDIR}/fstab.foo ${D}${sysconfdir}/fstab
}

============================================================

Added my fstab.foo in the base-files directory next to the .bbappend file.
Added IMAGE_INSTALL += "base-files-foo" to my local.conf.

============================================================

--00000000000056633205b345699d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi,</div><div class=3D"gmail_default" style=3D"font-fam=
ily:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_default" styl=
e=3D"font-family:arial,helvetica,sans-serif">I&#39;m trying to install diff=
erent fstab files based on the image being built. As far as I can=C2=A0tell=
 this should be possible by using BBCLASSEXTEND.=C2=A0</div><div class=3D"g=
mail_default" style=3D"font-family:arial,helvetica,sans-serif"><br></div><d=
iv class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif"=
>The error I get is:=C2=A0</div><div class=3D"gmail_default" style=3D"font-=
family:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_default" s=
tyle=3D"font-family:arial,helvetica,sans-serif">Error: Transaction check er=
ror:<br>=C2=A0 file /etc/fstab conflicts between attempted installs of base=
-files-foo-3.0.14-r89.raspberrypi3 and base-files-3.0.14-r89.raspberrypi3<b=
r></div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,s=
ans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:aria=
l,helvetica,sans-serif">If I do the exact same thing with the iptables reci=
pe - it works perfectly. Why is base-files different?</div><div class=3D"gm=
ail_default" style=3D"font-family:arial,helvetica,sans-serif"><br></div><di=
v class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif">=
Any help is much appreciated,</div><div class=3D"gmail_default" style=3D"fo=
nt-family:arial,helvetica,sans-serif">Morten</div><div class=3D"gmail_defau=
lt" style=3D"font-family:arial,helvetica,sans-serif"><br></div><div class=
=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif">Here is=
 what I have done:</div><div class=3D"gmail_default" style=3D"font-family:a=
rial,helvetica,sans-serif">-----------------------------------</div><div cl=
ass=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif"><br>=
</div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,san=
s-serif">Created foo.class:</div><div class=3D"gmail_default" style=3D"font=
-family:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_default" =
style=3D""><font face=3D"monospace">CLASSOVERRIDE .=3D &quot;:class-foo&quo=
t;<br><br>python foo_virtclass_handler () {<br>=C2=A0 =C2=A0 # Do nothing i=
f this is inherited, as it&#39;s for BBCLASSEXTEND<br>=C2=A0 =C2=A0 if &quo=
t;foo&quot; not in (d.getVar(&#39;BBCLASSEXTEND&#39;) or &quot;&quot;):<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.error(&quot;Don&#39;t inherit foo, use BBCLA=
SSEXTEND&quot;)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return<br><br>=C2=A0 =C2=A0 =
# Restore BPN<br>=C2=A0 =C2=A0 bpn =3D d.getVar(&#39;BPN&#39;)<br>=C2=A0 =
=C2=A0 newbpn =3D bpn.replace(&#39;-foo&#39;, &#39;&#39;)<br>=C2=A0 =C2=A0 =
d.setVar(&#39;BPN&#39;, newbpn)<br><br>=C2=A0 =C2=A0 # Use default FILESPAT=
H searching for patches and files<br>=C2=A0 =C2=A0 filespath =3D d.getVar(&=
#39;FILESPATH&#39;, True)<br>=C2=A0 =C2=A0 newfilespath =3D filespath.repla=
ce(&#39;-foo&#39;, &#39;&#39;)<br>=C2=A0 =C2=A0 d.setVar(&#39;FILESPATH&#39=
;, newfilespath)<br>}<br><br>addhandler foo_virtclass_handler<br>foo_virtcl=
ass_handler[eventmask] =3D &quot;bb.event.RecipePreFinalise&quot;<br></font=
></div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sa=
ns-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:arial=
,helvetica,sans-serif">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div><br></div>=
<div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans=
-serif">Added base-files_3.0.14.bbappend:</div><div class=3D"gmail_default"=
 style=3D"font-family:arial,helvetica,sans-serif"><br></div><div class=3D"g=
mail_default" style=3D"font-family:arial,helvetica,sans-serif">FILESEXTRAPA=
THS_prepend :=3D &quot;${THISDIR}/${PN}:&quot;<br><br>BBCLASSEXTEND =3D &qu=
ot;foo&quot;<br><br>SRC_URI_append_class-foo =3D &quot; file://fstab.foo &q=
uot;<br><br>do_install_append_class-foo () {<br>=C2=A0 =C2=A0 install -d=C2=
=A0${D}${sysconfdir}<br>=C2=A0 =C2=A0 install -m 644 ${WORKDIR}/fstab.foo $=
{D}${sysconfdir}/fstab<br>}<br></div></div><div><br><div class=3D"gmail_def=
ault" style=3D"font-family:arial,helvetica,sans-serif">=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D</div><div></div><div class=3D"gmail_default" style=3D"font-fam=
ily:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_default" styl=
e=3D"font-family:arial,helvetica,sans-serif">Added my fstab.foo in the base=
-files directory next to the .bbappend file.</div><div class=3D"gmail_defau=
lt" style=3D"font-family:arial,helvetica,sans-serif">Added IMAGE_INSTALL +=
=3D &quot;base-files-foo&quot; to my local.conf.</div><div class=3D"gmail_d=
efault" style=3D"font-family:arial,helvetica,sans-serif"><br></div><div cla=
ss=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif">=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div></div><div class=3D"gmail_default" st=
yle=3D"font-family:arial,helvetica,sans-serif"></div><div class=3D"gmail_de=
fault" style=3D"font-family:arial,helvetica,sans-serif"><br></div></div></d=
iv>

--00000000000056633205b345699d--
