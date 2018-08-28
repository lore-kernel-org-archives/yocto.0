Return-Path: <jan.vermaete@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1240EE00848; Tue, 28 Aug 2018 12:39:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jan.vermaete[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f51.google.com (mail-oi0-f51.google.com
	[209.85.218.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C22F5E00519
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 12:39:26 -0700 (PDT)
Received: by mail-oi0-f51.google.com with SMTP id x197-v6so5006136oix.5
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 12:39:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=4yPMBrAj+eOHhDa3Weq2z1n2kwB3xWXodLoRIeeBNGQ=;
	b=WOhCE6J77ApkswYM5m+LyJzOJVEdmF2flTHFpkR9l/XSeB96gMcMAEjTPl6gzpnMYb
	DLcygO7gh0x41SeoF7VuCzvddBAoYKj+O5E8NpJOdQjxTAVC7scdpqQQqcEDz0My/pfv
	9it0/fAojsr18KeMfZsrwMj/dAduwzJobRGG0etqz4jOUd8zdSBFyuC0NeAq32G/nVz9
	Z8AHI/jk+noW0biRxnoeMAUTzw6RRIodcCsFOmN+lSFH6QYoap5olSpmYK2j9T0A+VE9
	eLq57mUQC5bS5Ab1twkDTdriGI5hU+V1dP0E/nZ1PkSFGHsrUfho5tL8LsqR5CUxHne6
	dNUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=4yPMBrAj+eOHhDa3Weq2z1n2kwB3xWXodLoRIeeBNGQ=;
	b=UsCLtXrhldFSfOLvMBdnx2Dz9L1p4pLdBxc3dxXf08tcaucV8d8Fzk56jyOXRp+6wa
	bSYRLYGLeUdSWA11hbE9CgWKkj+abE1lt5x/Sqn3kVapQ1JT+kk9PN7rwy8nYTLEYguT
	B50STPsgGJ3HboXkCtEZO/pimRVj8tCdr/UBMZugU1FjDhn48l1/Gnm+qW2x2Ijw/280
	S+JZ0TnD7UckArPjDD8SehE/UiLkQgqgUXgYvoPdKWD05aULoa/WoeOq2YskbqoSNGoA
	Raqv/z/qWFQyym8HD8SI0KutsSIKkyxOPvVbz/k7prJUDOvrrGXmpRbTF8ltXio0LzK+
	SuqA==
X-Gm-Message-State: APzg51AJJ23H5Hd89ed8WsuyG2hLpY99V7LgC2jFFNgYWC615uYoZH+J
	gMWS06UNEO45aRnHrq8U2JNI4JwNv84b+jPWDX8=
X-Google-Smtp-Source: ANB0VdbwdyiFo7KegE4i3H9xey2RHgEPxMtlfbQcjdtfoCZ9SW0vfUTSia7C7JMvg3POI8BWyIKSedjw7N35oBwH/GI=
X-Received: by 2002:aca:c54e:: with SMTP id
	v75-v6mr2539494oif.276.1535485165942; 
	Tue, 28 Aug 2018 12:39:25 -0700 (PDT)
MIME-Version: 1.0
References: <CABF_=yjbBOpjSYyObgs091fRcxTyBj0gw0SOPi4hhKS-3PxV_A@mail.gmail.com>
	<CANNYZj-xqhJkgtQ0mYKQERcM0hPSC8t=kYwkFnsMJHAF8MxS5w@mail.gmail.com>
In-Reply-To: <CANNYZj-xqhJkgtQ0mYKQERcM0hPSC8t=kYwkFnsMJHAF8MxS5w@mail.gmail.com>
From: jan vermaete <jan.vermaete@gmail.com>
Date: Tue, 28 Aug 2018 21:39:16 +0200
Message-ID: <CABF_=yjgYC1cPFkdqEjfLh6kSRFqjNvnsd7sHeDtttqXOvDv-w@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: do_rootfs fails at master with something about glibc-binary-localedata-...
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
X-List-Received-Date: Tue, 28 Aug 2018 19:39:30 -0000
Content-Type: multipart/alternative; boundary="000000000000dfbd9d057483ff2f"

--000000000000dfbd9d057483ff2f
Content-Type: text/plain; charset="UTF-8"

It's working. Thanks!

I hope deb package will be again fully supported in the next release.

Op 28 aug. 2018 4:48 p.m. schreef "Alexander Kanavin" <
alex.kanavin@gmail.com>:

2018-08-28 16:34 GMT+02:00 jan vermaete <jan.vermaete@gmail.com>:
> I have a perfect working project at the latest state of Sumo.
> However, building the image when having all meta layers at the latest
> state at master fails.
>
> The step 'do_rootfs' gives:
> --
> The following packages have unmet dependencies:
>  locale-base-en-gb : Depends: glibc-binary-localedata-en-gb but it is
> not going to be installed
>  locale-base-en-us : Depends: glibc-binary-localedata-en-us but it is
> not going to be installed
> E: Unmet dependencies. Try 'apt-get -f install' with no packages (or
> specify a solution).

We don't really test deb packaging, and especially making images from
debs is not tested on the autobuilder at all I believe. Your options
are to debug the dependencies in .deb, or switch to rpm or ipk
formats.

Alex

--000000000000dfbd9d057483ff2f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">It&#39;s working. Thanks!<div dir=3D"auto"><br></div><div=
 dir=3D"auto">I hope deb package will be again fully supported in the next =
release.</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quot=
e">Op 28 aug. 2018 4:48 p.m. schreef &quot;Alexander Kanavin&quot; &lt;<a h=
ref=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail.com</a>&gt;:<br ty=
pe=3D"attribution"><blockquote class=3D"quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><div class=3D"quoted-text">2018=
-08-28 16:34 GMT+02:00 jan vermaete &lt;<a href=3D"mailto:jan.vermaete@gmai=
l.com" target=3D"_blank" rel=3D"noreferrer">jan.vermaete@gmail.com</a>&gt;:=
<br>
&gt; I have a perfect working project at the latest state of Sumo.<br>
&gt; However, building the image when having all meta layers at the latest<=
br>
&gt; state at master fails.<br>
&gt;<br>
&gt; The step &#39;do_rootfs&#39; gives:<br>
&gt; --<br>
&gt; The following packages have unmet dependencies:<br>
&gt;=C2=A0 locale-base-en-gb : Depends: glibc-binary-localedata-en-gb but i=
t is<br>
&gt; not going to be installed<br>
&gt;=C2=A0 locale-base-en-us : Depends: glibc-binary-localedata-en-us but i=
t is<br>
&gt; not going to be installed<br>
&gt; E: Unmet dependencies. Try &#39;apt-get -f install&#39; with no packag=
es (or<br>
&gt; specify a solution).<br>
<br></div>
We don&#39;t really test deb packaging, and especially making images from<b=
r>
debs is not tested on the autobuilder at all I believe. Your options<br>
are to debug the dependencies in .deb, or switch to rpm or ipk<br>
formats.<br>
<br>
Alex<br>
</blockquote></div><br></div>

--000000000000dfbd9d057483ff2f--
