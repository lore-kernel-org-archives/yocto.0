Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71190E0086B; Thu,  7 Jan 2016 15:42:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32BDCE006F3
	for <yocto@yoctoproject.org>; Thu,  7 Jan 2016 15:42:41 -0800 (PST)
Received: by mail-io0-f170.google.com with SMTP id 77so239069400ioc.2
	for <yocto@yoctoproject.org>; Thu, 07 Jan 2016 15:42:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=ue/e1MmuKQx17CKX1y8WZSWAf3yfqETaZdPeq/RVcoI=;
	b=IrYXQO3x2S3PBfF10Y1HbqJlkP3BkXxZ4DjoSiJ+1hnCIAO1IQXih2kFFvB0qdDICy
	oofVH+eAMnEom5mbcgHdaOCUeQvqf0kPGntExvDhQtAgL4hqXj/15iLfcBWWmVXFZePc
	WlN+l6MDB75XJgadqXdpao4IAR5ikFYfwKAs2u4vDSLnrTJMgP8EhyhpDqXZKEQjmJBe
	dB3R5zW9aRj36+e4kmbBCaz5qCQYMgR7+S/++34S1a606KvRXYZwF/5efWr6dT+X1WJI
	0VzERZFAoD8uFsO1tqzEq4+3HOYbxp0Ay4RGozv33vlX8/D49fA2SCuj0VkbspnUswMe
	DavA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=ue/e1MmuKQx17CKX1y8WZSWAf3yfqETaZdPeq/RVcoI=;
	b=gdiyBLGVqQopmJKMwxjGQ8NDhxdnSzx9ghVwi2sApvMy5U5CQADAD4oYy91IxtCgdx
	7tNZ5Je2CmWXqbDYsi2HGHaYdPPSmagHfg5Ir+aWkfnognQhjtTPf1VXEY3E7+DehqHX
	FxFio1zfcpUve3jQwIa0UpeKba4yZ44VnTa5eMhQtspEuYDRXnsNzoI5MzD8jURRotI8
	OedDn/uMOEm26JIsW3rt3LztsS80fuccO7I0H0viKzqbTODBa2Y+GSRHhmHDzdyq6iuS
	GwkgVqAm9UBZ5ys5i6JrJrvVcDJ8sUb66jUES7vNFIqfrvN5vdn8hM7KRD9InMEeCeIY
	BLUg==
X-Gm-Message-State: ALoCoQkQUDmJVtRVgJahV/8XlkHdN/4PsiFTiHEHdXNkttGpXrw/eRUwarFGKpNwgSVb8ZbGdVpghf4xXnHifHmiNqpELoOwH1+2mJ043LONfARczPjVAkI=
X-Received: by 10.107.3.154 with SMTP id e26mr92562682ioi.99.1452210161464;
	Thu, 07 Jan 2016 15:42:41 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Thu, 7 Jan 2016 15:42:22 -0800 (PST)
In-Reply-To: <1452024690-31461-2-git-send-email-dl9pf@gmx.de>
References: <1452024690-31461-1-git-send-email-dl9pf@gmx.de>
	<1452024690-31461-2-git-send-email-dl9pf@gmx.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 7 Jan 2016 23:42:22 +0000
Message-ID: <CAJTo0LaYcd+X2mJqiMGyP=dt6iL7hMv3vEDaQ3u62-e+xwdyTw@mail.gmail.com>
To: dl9pf@gmx.de
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] Fix connectivity check for BB_FETCH_PREMIRRORONLY case
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 07 Jan 2016 23:42:45 -0000
Content-Type: multipart/alternative; boundary=001a113ec10ad03bb70528c70618

--001a113ec10ad03bb70528c70618
Content-Type: text/plain; charset=UTF-8

On 5 January 2016 at 20:11, <dl9pf@gmx.de> wrote:

> +    # Check for BB_FETCH_PREMIRRORONLY and adapt BB_NO_NETWORK
> +    if bb.data.getVar("BB_FETCH_PREMIRRORONLY", self.d, True) is not None:
> +        bb.data.setVar("BB_NO_NETWORK", "1", self.d)
>

Traceback (most recent call last):
  File
"/home/pokybuild/yocto-autobuilder/yocto-worker/nightly-intel-gpl/build/meta/classes/sanity.bbclass",
line 934, in check_sanity_eventhandler(e=<bb.event.SanityCheck object at
0x346f350>):
                 sanity_data.setVar("SANITY_USE_EVENTS", "1")
    >        reparse = check_sanity(sanity_data)
             e.data.setVar("BB_INVALIDCONF", reparse)
  File
"/home/pokybuild/yocto-autobuilder/yocto-worker/nightly-intel-gpl/build/meta/classes/sanity.bbclass",
line 902, in check_sanity(sanity_data=<bb.data_smart.DataSmart object at
0x3447dd0>):
         if last_sanity_version < sanity_version:
    >        check_sanity_version_change(status, sanity_data)
             status.addresult(check_sanity_sstate_dir_change(sstate_dir,
sanity_data))
  File
"/home/pokybuild/yocto-autobuilder/yocto-worker/nightly-intel-gpl/build/meta/classes/sanity.bbclass",
line 658, in check_sanity_version_change(status=<SanityStatus object at
0x3447510>, d=<bb.data_smart.DataSmart object at 0x3447dd0>):
         # Check that we can fetch from various network transports
    >    netcheck = check_connectivity(d)
         status.addresult(netcheck)
  File
"/home/pokybuild/yocto-autobuilder/yocto-worker/nightly-intel-gpl/build/meta/classes/sanity.bbclass",
line 275, in check_connectivity(d=<bb.data_smart.DataSmart object at
0x3447dd0>):
         # Check for BB_FETCH_PREMIRRORONLY and adapt BB_NO_NETWORK
    >    if bb.data.getVar("BB_FETCH_PREMIRRORONLY", self.d, True) is not
None:
             bb.data.setVar("BB_NO_NETWORK", "1", self.d)
NameError: global name 'self' is not defined

Just use d, you don't need to use bb.data.getVar("foo", d, True) when
d.getVar("foo", True) is clearer.

Ross

--001a113ec10ad03bb70528c70618
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 5 January 2016 at 20:11,  <span dir=3D"ltr">&lt;<a href=3D"mailto:dl9pf@=
gmx.de" target=3D"_blank">dl9pf@gmx.de</a>&gt;</span> wrote:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:=
1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left=
:1ex"><div id=3D":3vr" class=3D"" style=3D"overflow:hidden">+=C2=A0 =C2=A0 =
# Check for BB_FETCH_PREMIRRORONLY and adapt BB_NO_NETWORK<br>
+=C2=A0 =C2=A0 if bb.data.getVar(&quot;BB_FETCH_PREMIRRORONLY&quot;, self.d=
, True) is not None:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.data.setVar(&quot;BB_NO_NETWORK&quot;, &quo=
t;1&quot;, self.d)</div></blockquote></div><br>Traceback (most recent call =
last):<br>=C2=A0 File &quot;/home/pokybuild/yocto-autobuilder/yocto-worker/=
nightly-intel-gpl/build/meta/classes/sanity.bbclass&quot;, line 934, in che=
ck_sanity_eventhandler(e=3D&lt;bb.event.SanityCheck object at 0x346f350&gt;=
):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sanity_=
data.setVar(&quot;SANITY_USE_EVENTS&quot;, &quot;1&quot;)<br>=C2=A0 =C2=A0 =
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0reparse =3D check_sanity(sanity_data)<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0e.data.setVar(&quot;BB_INVA=
LIDCONF&quot;, reparse)<br>=C2=A0 File &quot;/home/pokybuild/yocto-autobuil=
der/yocto-worker/nightly-intel-gpl/build/meta/classes/sanity.bbclass&quot;,=
 line 902, in check_sanity(sanity_data=3D&lt;bb.data_smart.DataSmart object=
 at 0x3447dd0&gt;):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if last_sanity_ver=
sion &lt; sanity_version: <br>=C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0 =C2=A0 =C2=
=A0check_sanity_version_change(status, sanity_data)<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0status.addresult(check_sanity_sstate_dir_change=
(sstate_dir, sanity_data))<br>=C2=A0 File &quot;/home/pokybuild/yocto-autob=
uilder/yocto-worker/nightly-intel-gpl/build/meta/classes/sanity.bbclass&quo=
t;, line 658, in check_sanity_version_change(status=3D&lt;SanityStatus obje=
ct at 0x3447510&gt;, d=3D&lt;bb.data_smart.DataSmart object at 0x3447dd0&gt=
;):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Check that we can fetch from var=
ious network transports<br>=C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0netcheck =3D che=
ck_connectivity(d)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0status.addresult(ne=
tcheck)<br>=C2=A0 File &quot;/home/pokybuild/yocto-autobuilder/yocto-worker=
/nightly-intel-gpl/build/meta/classes/sanity.bbclass&quot;, line 275, in ch=
eck_connectivity(d=3D&lt;bb.data_smart.DataSmart object at 0x3447dd0&gt;):<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Check for BB_FETCH_PREMIRRORONLY and=
 adapt BB_NO_NETWORK<br>=C2=A0 =C2=A0 &gt; =C2=A0 =C2=A0if bb.data.getVar(&=
quot;BB_FETCH_PREMIRRORONLY&quot;, self.d, True) is not None:<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bb.data.setVar(&quot;BB_NO_NETWORK&qu=
ot;, &quot;1&quot;, self.d)<br>NameError: global name &#39;self&#39; is not=
 defined<br></div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_=
extra">Just use d, you don&#39;t need to use bb.data.getVar(&quot;foo&quot;=
, d, True) when d.getVar(&quot;foo&quot;, True) is clearer.</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a113ec10ad03bb70528c70618--
