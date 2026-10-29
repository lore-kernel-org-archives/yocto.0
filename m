Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.14428.1793287042863507717
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Oct 2026 08:17:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20260707 header.b=Emq0LxoF;
 spf=pass (domain: gmail.com, ip: 209.85.128.179, mailfrom: jpewhacker@gmail.com)
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-8b0d63f60bcso20546047b3.3
        for <yocto@lists.yoctoproject.org>; Thu, 29 Oct 2026 08:17:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793287042; cv=none;
        d=google.com; s=arc-20260327;
        b=OahXdcBJHaXG06CQeb5uGYuGsJHGSLi6HVQzGU0sE4Aragsl5zPYu9j6hLeKynx5km
         X2+VrgGcde8vlSi/D9rNc0xREtQ3KR95c0eHlL7HgrNxOruNN85eK+QHkgGqRmLqZRw8
         VesmAf67NMgPuW0ZgZKQivvmrjHdymPQ4vJ9tIE/8n94qJVuZE0MWA3FQZGzLfOl3hjI
         1ZovotNZRUNinlGISBDwIrZDl6rZdZcehidGuz3WOTCt7LMbLMY6w90Vp7dVchAGf5l4
         Le8R/CQDbVci5XEyekPvu0FRb4f2c+yxnWibofU9bLJkA6fMlfyXahqfYyOKMjaiJ7l6
         VR5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=esz86GbkfMR1Oj6Gl1DR1uTQAYjE42zsuyIFnvthwQU=;
        fh=J09OaRI41L/c2i4WMquotmAeE5fKhmgXqCRy51xoJUw=;
        b=OkgagWU5BJGAbf/L9XCDbiV07uO29u3dEAOLfcf+wm4S17RODp4JqG0EDC7LwkU+W8
         veTM8OH64PjB880TQgsT4wYC1hLGBaGI1nifNQQVocsTZ8z+3qneQsYj7RlTaKRUudSS
         0bNdR9/GABk/5ps2ssYII3NC2dMJZrSYtDAasb7Hcb3gv1fA8ghTt11eQALdKZzaE/ZI
         anPgy8cl5MKwC4WbL6gogtr4HHqPGHVgQqe9JNUgoFQcHBRhhHwdwGPHQawB7YnQ7Sde
         kCdXDyixt67E4hCxks3aqujVK+hKa0e2o+wE618J3w9bnd1OvUvXGsKnNkdu4tP1vpcg
         XDCQ==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793287042; x=1793891842; darn=lists.yoctoproject.org;
        h=content-type:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=esz86GbkfMR1Oj6Gl1DR1uTQAYjE42zsuyIFnvthwQU=;
        b=Emq0LxoF2SqjF4wgpANc856zpG+Fq37dVXPGDxbqbrlt9kSyV9XPOUMOtEYgs3gUgf
         68I88wxquyG7MeZSyr0wIlAPXpnXHe71HgCfC7+0fSleNIpXvzoFMnu6qbWv1pQ8Ocig
         qsjUxSdrQk4stqFZbi+Ckx9dFJYi7OfnXx8U/vAtkR6O70soYDcthEjuFiopEDfEXPHE
         QxG75COfpOPDbbKJIdiWeDu5GaU2oYU5/kjy98apr2mJ5uoPmIT8ekt/Ixw4xHVRovbm
         3cZGH5Q2KPra3nWbJvprNHyU5C8pBPbnIPcFXqI4NLaJmjUATgbRTpDpcLN2Xe842BhI
         aohQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793287042; x=1793891842;
        h=content-type:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=esz86GbkfMR1Oj6Gl1DR1uTQAYjE42zsuyIFnvthwQU=;
        b=0iOaNAow08EAUTQVXMlYsdPIUyUMD2rxQxAtmlpB12yL8C7vAUZ+odxbgNqThZc/6E
         t/s/nby6LwDpeRhaMln3OyhqXViD8OdErsVASdZfF1K6bowFLeL/gHUR+1rYj5PbFVuq
         VV5PWCn7GvDp2TFWVWv8q/zA+HVEaGyS7WXFOZsI1NJOw/3C2jo1pugjgAy2XJo13uN1
         3GuuQoo2rQB0802A7WlA5xCeoiJioq096Ptjinz5p2fW8JqeByXpVIlDJPpu15zEC3Ay
         rcRWDoeTIEpF0YBX8Rc0BT2CVdOz6PWBLgYYEeOMa02FaTWLxteHVrVPtRLh6+K0XiXq
         C+Sw==
X-Gm-Message-State: AFq9FYIFA2NgLtJ0amPYCn4dHTMxni15Q4qAfVds0U0l5FyCWBEhkpWC
	9QAbO2UOsGPzitNNJtxM8VF3ng09+Jd7EvKNVzmIOqRZc/oNu0CInk2aMF/ytnEgEtbTQklvzWJ
	1LI/9JJh5zpzWibopy20wyr0ULNMt2pIm7w==
X-Gm-Gg: AYBFou0bAM4rsIVQIYd+xRgyALsvuDPSlXI6+58LuFPEBhaBNsLdFAznPQpNmXhf9OP
	/hm0W1Z05WYQxs5EXorlOz8TLT7pvNWzLViSwxNNdIEi4HbJh4KYdzXPpPKKv3fluo15pz4F/dS
	ab9px9QPJVHrU0NVLWG8/K1L2TUZKEANt50gzIKB2uUvt6ONVZBi/54FBnLszqZ9pS+iD2K+jDg
	D5kxWzOKUUIiL58IJJt66fbQpdo0/Kb31P+30fGjOJVV38Y/WGH35XG1phak/kNIV/w6n/0DEup
	tFzK1HDtStHnnL7dBbIUhmKk4SAvtrfElKZLYAuZNaXJHoGlEChh/3R54lu4dGMgGBLbjJnLzeH
	qH5J8Uyr5p2Qpfwb3qFpZKhBwr7dbfa0lkFZGlq3HMtOPjqfuRnk=
X-Received: by 2002:a05:690e:18e:b0:674:1248:2b87 with SMTP id
 956f58d0204a3-67a7bd3b779mr3040588d50.29.1793287041642; Thu, 29 Oct 2026
 08:17:21 -0700 (PDT)
MIME-Version: 1.0
References: <StmM.1793285611391362979.WYmm@lists.yoctoproject.org>
In-Reply-To: <StmM.1793285611391362979.WYmm@lists.yoctoproject.org>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Thu, 29 Oct 2026 09:17:10 -0600
X-Gm-Features: AclHuK9BK8ToPVmLD9rr3BoNK8JPLSRFWdvJL8WoN9nDhfD45x0uaJLgmabb6Ao
Message-ID: <CAJdd5GZJ=81KcSNFzTQ0brAGdQpv+PNS9cxOOmnavdkgSf_A+w@mail.gmail.com>
Subject: Re: [yocto] create-spdx-3.0: SPDX agent variables (supplier/authors)
 are not part of the SPDX task signatures
To: yocto@lists.yoctoproject.org, m.webert@devtronic.tech
Content-Type: multipart/alternative; boundary="00000000000018f4e1065efc2df4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <yocto@lists.yoctoproject.org>; Thu, 29 Oct 2026 15:17:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66794

--00000000000018f4e1065efc2df4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 29, 2026 at 8:53=E2=80=AFAM m.webert via lists.yoctoproject.org
<m.webert=3Ddevtronic.tech@lists.yoctoproject.org> wrote:

> Hi,
>
> I just worked on customizing the SPDX json output that is created during
> my build and I wondered why changing the SPDX agent variables is not
> enough. It seems like those values that end up in the SBOMs are restored
> from a cache.
>
> Is this known/done by purpose?
>

Partly yes, and no. The Author only changes when the recipe is rebuilt on
purpose because it's a record of who the author was at the time of the
build (which, can be different as time progresses). It's also currently not
(easily) possible to actually detect the changes to the author variable due
to the way they are constructed. I'm not exactly sure how to make bitbake
understand the variable structure to add it correctly into the task
signature; this would need some thought and work.


>
> Thanks,
> Markus
>
> Some AI created information that might help as well:
> The agent variables (SPDX_AUTHORS / SPDX_AUTHORS_<name>*,
> SPDX_IMAGE_SUPPLIER, SPDX_SDK_SUPPLIER_, SPDX_PACKAGE_SUPPLIER_) are read
> indirectly: oe.sbom30.ObjectSet.new_agent() builds the variable names
> (<BASE>_name, <BASE>_type, <BASE>id<type>, <BASE>ref) at runtime, so
> BitBake cannot see them. The SPDX tasks' vardeps only contain
> SPDX3_VAR_DEPS, which does not include them, and do_create_image_sbom_spd=
x
> has no vardeps for SPDX_IMAGE_SUPPLIER either.
>
> To reproduce (wrynose 636e5d3; master b62d5e6 has the same SPDX3_VAR_DEPS
> apart from the SPDX_INCLUDE_* additions):
>
> Build an image with the defaults.
> Set e.g. SPDX_AUTHORS =3D "example" SPDX_AUTHORS_example_name =3D "Exampl=
e
> Ltd" SPDX_AUTHORS_example_type =3D "organization" SPDX_IMAGE_SUPPLIER_ref=
 =3D
> "SPDX_AUTHORS_example"
> Rebuild. The per-recipe do_create_*spdx tasks are not re-run, and the
> image supplier only appears if the image itself is rebuilt for another
> reason.
> In our case, the resulting image SBOM contained both Organization agents,
> "Example Ltd" (new) and "OpenEmbedded" (the default author of per-recipe
> documents restored from sstate).
>
> This looks like the same class of problem that aa5b220ca9b9
> ("create-spdx-3.0: track SPDX_INCLUDE_SOURCES in do_create_spdx's sstate
> signature") fixed for SPDX_INCLUDE_SOURCES. A fix could add the agent
> variables to SPDX3_VAR_DEPS and to the vardeps of do_create_image_sbom_sp=
dx
> and the SDK SBOM task. Since the SPDX_AUTHORS_<name>_* names are derived
> from SPDX_AUTHORS, and *_ref can point to other agents, the list probably
> needs to be computed rather than hard-coded.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66793):
> https://lists.yoctoproject.org/g/yocto/message/66793
> Mute This Topic: https://lists.yoctoproject.org/mt/121995284/3616693
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> JPEWhacker@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000018f4e1065efc2df4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 29, 2026=
 at 8:53=E2=80=AFAM m.webert via <a href=3D"http://lists.yoctoproject.org" =
target=3D"_blank">lists.yoctoproject.org</a> &lt;m.webert=3D<a href=3D"mail=
to:devtronic.tech@lists.yoctoproject.org" target=3D"_blank">devtronic.tech@=
lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div>Hi,<br><br>I just worked on customizing the SPDX=
 json output that is created during my build and I wondered why changing th=
e SPDX agent variables is not enough. It seems like those values that end u=
p in the SBOMs are restored from a cache.</div>
<div>=C2=A0</div>
<div>Is this known/done by purpose?<br></div></blockquote><div><br></div><d=
iv>Partly yes, and no. The Author only=C2=A0changes when the recipe is rebu=
ilt on purpose because it&#39;s a record of who the author was at the time =
of the build (which, can be different as time progresses). It&#39;s also cu=
rrently not (easily) possible to actually detect the changes to the author =
variable due to the way they are constructed. I&#39;m not exactly sure how =
to make bitbake understand the variable structure to add it correctly into =
the task signature; this=C2=A0would need some thought and work.</div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><br>Than=
ks,<br>Markus</div>
<div>=C2=A0</div>
<div>Some AI created information that might help as well:<br>The agent vari=
ables (SPDX_AUTHORS / SPDX_AUTHORS_&lt;name&gt;*, SPDX_IMAGE_SUPPLIER, SPDX=
_SDK_SUPPLIER_, SPDX_PACKAGE_SUPPLIER_) are read indirectly: oe.sbom30.Obje=
ctSet.new_agent() builds the variable names (&lt;BASE&gt;_name, &lt;BASE&gt=
;_type, &lt;BASE&gt;id&lt;type&gt;, &lt;BASE&gt;ref) at runtime, so BitBake=
 cannot see them. The SPDX tasks&#39; vardeps only contain SPDX3_VAR_DEPS, =
which does not include them, and do_create_image_sbom_spdx has no vardeps f=
or SPDX_IMAGE_SUPPLIER either.<br><br>To reproduce (wrynose 636e5d3; master=
 b62d5e6 has the same SPDX3_VAR_DEPS apart from the SPDX_INCLUDE_* addition=
s):<br><br>Build an image with the defaults.<br>Set e.g. SPDX_AUTHORS =3D &=
quot;example&quot; SPDX_AUTHORS_example_name =3D &quot;Example Ltd&quot; SP=
DX_AUTHORS_example_type =3D &quot;organization&quot; SPDX_IMAGE_SUPPLIER_re=
f =3D &quot;SPDX_AUTHORS_example&quot;<br>Rebuild. The per-recipe do_create=
_*spdx tasks are not re-run, and the image supplier only appears if the ima=
ge itself is rebuilt for another reason.<br>In our case, the resulting imag=
e SBOM contained both Organization agents, &quot;Example Ltd&quot; (new) an=
d &quot;OpenEmbedded&quot; (the default author of per-recipe documents rest=
ored from sstate).<br><br>This looks like the same class of problem that aa=
5b220ca9b9 (&quot;create-spdx-3.0: track SPDX_INCLUDE_SOURCES in do_create_=
spdx&#39;s sstate signature&quot;) fixed for SPDX_INCLUDE_SOURCES. A fix co=
uld add the agent variables to SPDX3_VAR_DEPS and to the vardeps of do_crea=
te_image_sbom_spdx and the SDK SBOM task. Since the SPDX_AUTHORS_&lt;name&g=
t;_* names are derived from SPDX_AUTHORS, and *_ref can point to other agen=
ts, the list probably needs to be computed rather than hard-coded.</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#66793): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/66793" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/66793</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/121995284/361=
6693" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/121995284/3616693</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:JPEWhacker@gmail.com" target=3D"_blank">JPEWhack=
er@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>
</div>

--00000000000018f4e1065efc2df4--
