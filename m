Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6ACBCE01304
	for <yocto@yoctoproject.org>; Mon,  3 Sep 2012 07:48:03 -0700 (PDT)
Received: by qady1 with SMTP id y1so2672399qad.14
	for <yocto@yoctoproject.org>; Mon, 03 Sep 2012 07:47:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=JL8CTbdGTck6IW3tOK9fhoUMEMa+wQNGDEAMH/4OQsg=;
	b=No/wHA8VgVgi5m4dLQ/bjlrCEaLSBbqlEwtX0OqSpjrJsR4gffF+fFk88bOzUoi0oT
	igwAO1Yo1PhpfE5ADtp+xanZA+sxIzwLqETHKv/a9pVR3boCEAEtbD6WMX/EZf29QBJt
	MGvzwgSlzOo6VTN0jCYKOikQ1yccMNFQQ89nkvu52Px0eLrsXF8R0eGaWXGm5Nj/KRKn
	wTE1G9PGEo/axPORaJRSd9rlwWaDMBmfAq9PHhHPxu3L6My5JidBLK41+pX0YYD3pKzZ
	L0zX56rK3vErhEgjThK1eM1c963ddYDG9/mm09WSpFweBwJ2XPMvrlY3DPexSz1LTNUn
	0Dbg==
MIME-Version: 1.0
Received: by 10.229.136.137 with SMTP id r9mr9596790qct.146.1346683678600;
	Mon, 03 Sep 2012 07:47:58 -0700 (PDT)
Sender: rstreif@linuxfoundation.org
Received: by 10.49.116.77 with HTTP; Mon, 3 Sep 2012 07:47:58 -0700 (PDT)
Received: by 10.49.116.77 with HTTP; Mon, 3 Sep 2012 07:47:58 -0700 (PDT)
In-Reply-To: <5044B59B.30708@freenet.de>
References: <5044B59B.30708@freenet.de>
Date: Mon, 3 Sep 2012 07:47:58 -0700
X-Google-Sender-Auth: tFzXjZNSDkLH6yYEzyHoZxjAgzA
Message-ID: <CA+gsK-qkMSv-03tw-gLR5RcfmDUissfXKZVjy3ethBHt+g-8xQ@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: Axel Beierlein <belatronix@freenet.de>
X-Gm-Message-State: ALoCoQnlDtyBNH8h3KgmZhIIuacz20zW4iLKTi3noMJ23wj9fDLmbQIPGG3GWvw+iU9MeC6Ly/0T
Cc: yocto@yoctoproject.org
Subject: Re: Eclipse Juno Plugin?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 03 Sep 2012 14:48:03 -0000
Content-Type: multipart/alternative; boundary=00248c71189949af2504c8cd3a5f

--00248c71189949af2504c8cd3a5f
Content-Type: text/plain; charset=ISO-8859-1

Hi Axel,

The autotools.ui package is there in Juno given that you installed
Autotools support for CDT. However, it's a newer version and the YP Eclipse
plugin 1.2 requires exactly version 1.0.0 of the CDT Autotools support.

Until the 1.3 plugin is released and you can point Eclipse to the download
site you will have to build it yourself.

Rudi
On Sep 3, 2012 6:54 AM, "Axel Beierlein" <belatronix@freenet.de> wrote:

> Hello,
>
> is it right that Eclipse Juno need the Plugin Ver. 1.3?
>
> When i try to install the 1.2.1 Version of the Plugin in Juno, i get the
> Error that autotools.ui was required.
>
> -- Missing requirement: Yocto Plugin IDE 1.2.0.201206291757
> (org.yocto.sdk.ide 1.2.0.201206291757) requires 'bundle
> org.eclipse.linuxtools.cdt.autotools.ui 1.0.0' but it could not be found --
>
> Where is this Package in Juno? The former installation of the Autotools
> Package was successful.
>
> Axel
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--00248c71189949af2504c8cd3a5f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p>Hi Axel,</p>
<p>The autotools.ui package is there in Juno given that you installed Autot=
ools support for CDT. However, it&#39;s a newer version and the YP Eclipse =
plugin 1.2 requires exactly version 1.0.0 of the CDT Autotools support.</p>

<p>Until the 1.3 plugin is released and you can point Eclipse to the downlo=
ad site you will have to build it yourself.</p>
<p>Rudi</p>
<div class=3D"gmail_quote">On Sep 3, 2012 6:54 AM, &quot;Axel Beierlein&quo=
t; &lt;<a href=3D"mailto:belatronix@freenet.de">belatronix@freenet.de</a>&g=
t; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
Hello,<br>
<br>
is it right that Eclipse Juno need the Plugin Ver. 1.3?<br>
<br>
When i try to install the 1.2.1 Version of the Plugin in Juno, i get the<br=
>
Error that autotools.ui was required.<br>
<br>
-- Missing requirement: Yocto Plugin IDE 1.2.0.201206291757<br>
(org.yocto.sdk.ide 1.2.0.201206291757) requires &#39;bundle<br>
org.eclipse.linuxtools.cdt.autotools.ui 1.0.0&#39; but it could not be foun=
d --<br>
<br>
Where is this Package in Juno? The former installation of the Autotools<br>
Package was successful.<br>
<br>
Axel<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--00248c71189949af2504c8cd3a5f--
