Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web09.4680.1620201385162611117
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 May 2021 00:56:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=kizCGsM1;
 spf=pass (domain: gmail.com, ip: 209.85.216.50, mailfrom: chuckwolber@gmail.com)
Received: by mail-pj1-f50.google.com with SMTP id lj11-20020a17090b344bb029015bc3073608so393374pjb.3
        for <yocto@lists.yoctoproject.org>; Wed, 05 May 2021 00:56:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=QvEK2gDRDQNxpoYocomdBDFsBK/RRPU1EUiyotnlcgs=;
        b=kizCGsM1y4M7EDWByBDx5U3H1nH3PfFOkUrfl+W/R4nbrbeXOr43sG1JvNIRY+PYsr
         LuFuCZvREFZEKDq0PdIgf2DE+yWjr58ks1vuiM4/EIKKxQ3RUXCN11ZF9SCjvxNn0tYH
         IabLNRQHG4qoWcImV225py4SeevAKZi9ftLCJJS6/8q0Df/l8YgbGmon6nYshYRqbUvq
         oW69EAfuF+CRD5N1bXSTN07zYVPxGyIu1B3Jborpdw0oSdr2xEeSklOIu5/puABY+Yc5
         6yndsX7DyNh/Ad8C1YchrInbskB1uCclztf2Uru7nlLGMqswEAJonS4aRfqFY5ro3D//
         i5xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=QvEK2gDRDQNxpoYocomdBDFsBK/RRPU1EUiyotnlcgs=;
        b=U7aYC+2fBBMnnlyydbtZ6/3skaBYAlaS+/hVln9DL6RTbdsB7DFOt0LPUVyU5TLuCR
         JaEbAsA1KerDGTiV/nsrx765dGB2kj+6ZMZTq4pr+SXrIzlYod/cLcvNe90tgoGXBCEs
         9+0edgruJXQiHwoTXvQCj8se7yp2Yf/QhMT82qbjQztuUQKjBI2CCh1/FrYtlRsOt5U5
         Gv7RbVlNmcCGzXXZ5kqe8+EUySAJOlgZ5rWXypXrkOz47BaH2h+2hbqgXTdx1MEoMV72
         j9jHGBpI1TBIZx1MpqXjjTYSrMM3FNG1L82DqCwBcQoJ7F6T8Aqqb5RDFuWdobaXoQXI
         lOMQ==
X-Gm-Message-State: AOAM530dHMXwbZXBbBiUVNiu6Swy+PPHeG/BzLOEWXcY+nudxLgbNhmO
	WBSBm+mBd3pYQvmjmOU7xnD0rAKTSAudQVM9gLtfwvxNUC1/FQ==
X-Google-Smtp-Source: ABdhPJxnlAcXKUEo5/ZUtNj8C+9OiKRJ4PmrXVO4+yo95lOni4jbvYVB/tRvJwpXA9w/q+H2waPawQlSL3RQwZuNmCM=
X-Received: by 2002:a17:902:b082:b029:ed:93dc:e6f9 with SMTP id
 p2-20020a170902b082b02900ed93dce6f9mr29844529plr.16.1620201384132; Wed, 05
 May 2021 00:56:24 -0700 (PDT)
MIME-Version: 1.0
References: <167C0F53B19DFD83.28940@lists.yoctoproject.org>
In-Reply-To: <167C0F53B19DFD83.28940@lists.yoctoproject.org>
From: "Chuck Wolber" <chuckwolber@gmail.com>
Date: Wed, 5 May 2021 00:56:12 -0700
Message-ID: <CAB=6tBRLvBS4ZKBWQP02ZJvxAK3aqEYgKTevtKCC5U=VpcRZFQ@mail.gmail.com>
Subject: Re: [yocto] Hardknott - pseudo excluded from intercept_scripts
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f7447305c1908755"

--000000000000f7447305c1908755
Content-Type: text/plain; charset="UTF-8"

The following code is an effective workaround. It must be added after the
core-image is inherited.

python () {
     pseudo_ignore_paths = d.getVar('PSEUDO_IGNORE_PATHS')
     result = ','.join([x for x in pseudo_ignore_paths.split(',') if
"intercept_scripts" not in x])
     d.setVar('PSEUDO_IGNORE_PATHS', result)
}

..Ch:W..

On Tue, May 4, 2021 at 8:53 PM Chuck Wolber via lists.yoctoproject.org
<chuckwolber=gmail.com@lists.yoctoproject.org> wrote:

>
> I was attempting an image build with Yocto Hardknott, and I ran into a
> chown problem during do_rootfs(). I traced it down to
> ${WORKDIR}/intercept_scripts showing up in the PSEUDO_IGNORE_PATHS
> environment variable.
>
> This commit made the change:
>
> https://git.openembedded.org/openembedded-core/commit/meta/classes/image.bbclass?id=9463be2292b942a1072eea88881b9644e55aadb9
>
> I continued down the rabbit hole until I got here:
>
> https://git.openembedded.org/openembedded-core/tree/meta/lib/oe/package_manager/__init__.py#n173
>
> Line 192 specifically is the smoking gun. The files are being copied from
> poky/scripts/postinst-intercepts into the ${WORKDIR}/intercept_scripts
> directory and immediately failing when the copyFile utility attempts to do
> a chown.
>
> Is there any logical explanation for this? Is this a bug or am I doing
> something wrong? Is there a workaround?
>
> ..Ch:W..
>
> --
> *"Perfection must be reached by degrees; she requires the slow hand of
> time." - Voltaire*
>
> 
>
>

-- 
*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--000000000000f7447305c1908755
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The following code is an effective workaround. It mus=
t be added after the core-image is inherited.</div><div><br></div>python ()=
 {<br>=C2=A0 =C2=A0 =C2=A0pseudo_ignore_paths =3D d.getVar(&#39;PSEUDO_IGNO=
RE_PATHS&#39;)<br>=C2=A0 =C2=A0 =C2=A0result =3D &#39;,&#39;.join([x for x =
in pseudo_ignore_paths.split(&#39;,&#39;) if &quot;intercept_scripts&quot; =
not in x])<br>=C2=A0 =C2=A0 =C2=A0d.setVar(&#39;PSEUDO_IGNORE_PATHS&#39;, r=
esult)<br>}<div><br></div><div>..Ch:W..<br></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 4, 2021 at 8:53 PM C=
huck Wolber via <a href=3D"http://lists.yoctoproject.org">lists.yoctoprojec=
t.org</a> &lt;chuckwolber=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.=
org">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><br></div><div>I=
 was attempting an image build with Yocto Hardknott, and I ran into a chown=
 problem during do_rootfs(). I traced it down to ${WORKDIR}/intercept_scrip=
ts showing up in the PSEUDO_IGNORE_PATHS environment variable.</div><div><b=
r></div><div>This commit made the change:</div><div><a href=3D"https://git.=
openembedded.org/openembedded-core/commit/meta/classes/image.bbclass?id=3D9=
463be2292b942a1072eea88881b9644e55aadb9" target=3D"_blank">https://git.open=
embedded.org/openembedded-core/commit/meta/classes/image.bbclass?id=3D9463b=
e2292b942a1072eea88881b9644e55aadb9</a></div><div><br></div><div>I continue=
d down the rabbit hole until I got here:</div><div><a href=3D"https://git.o=
penembedded.org/openembedded-core/tree/meta/lib/oe/package_manager/__init__=
.py#n173" target=3D"_blank">https://git.openembedded.org/openembedded-core/=
tree/meta/lib/oe/package_manager/__init__.py#n173</a></div><div><br></div><=
div>Line 192 specifically is the smoking gun. The files are being copied fr=
om poky/scripts/postinst-intercepts into the ${WORKDIR}/intercept_scripts d=
irectory and immediately failing when the copyFile utility attempts to do a=
 chown.<br></div><div><br></div><div>Is there any logical explanation for t=
his? Is this a bug or am I doing something wrong? Is there a workaround?<br=
></div><div><div><div><br></div><div>..Ch:W..<br></div><div><br></div>-- <b=
r><div dir=3D"ltr"><div dir=3D"ltr"><div><b><span style=3D"font-family:mono=
space">&quot;Perfection must be reached by degrees; she requires the slow h=
and of time.&quot; - Voltaire</span></b></div></div></div></div></div></div=
>
<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"=
gmail_signature"><div dir=3D"ltr"><div><b><span style=3D"font-family:monosp=
ace">&quot;Perfection must be reached by degrees; she requires the slow han=
d of time.&quot; - Voltaire</span></b></div></div></div></div>

--000000000000f7447305c1908755--
