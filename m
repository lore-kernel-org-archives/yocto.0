Return-Path: <dominig.arfoll@fridu.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 784E5E00804; Wed,  8 Mar 2017 07:10:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.42 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1761E007AA
	for <yocto@yoctoproject.org>; Wed,  8 Mar 2017 07:10:32 -0800 (PST)
Received: by mail-wm0-f42.google.com with SMTP id n11so117301709wma.1
	for <yocto@yoctoproject.org>; Wed, 08 Mar 2017 07:10:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fridu.net; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=dRm0PIGhhR9PwFJ7Tl9IAWoMvYDFKDrKt0XhrHFbGN8=;
	b=kWHSwq2USaBh4MM3SpGXbG8Xd16syCyqsxbZ1Kd4AuXFYjd1rf/6F1xawvWKmvtWUh
	ppPr3Omte0vwo6W6mfuw4M+2aQKIrvJ2z37JUuGmxdoLzzfNrt1RBOHZ0n096wmvcYTo
	YbsAGVDBw9rpjDQb0I1kZjZnF7INT5OprEnhU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=dRm0PIGhhR9PwFJ7Tl9IAWoMvYDFKDrKt0XhrHFbGN8=;
	b=lN/1/tg+PnoTN8KLEDJpMEcphvX926aT79FepqdWsCn5UG0tWlk9ZG+wHvWqVVWZDR
	pZ4zLoigJvyUqsl2C6j7sGOpGEmLkYLmZ0cMoSQ7kPZJTM+l3TGUxRHYVUc8Qd01IJNB
	7cR/7rAW17pD6c5cIdt99Wv6j21Hz9eyz43qFbp6TcpEFOjE2Gwn/7HfvLpWAP3F6XYG
	mPmzx6SpctxafcXVrEpbjObVsa95MV26glNSUiO3VVzHVzekgYaEYS4bf2dnuT9ju7Nf
	BvVt5rJRV9Zn03YwoGgfgeGOF/hoo3zI9Pp65FrOjMKkUDeub13ELle2j9ylsEqjlq/T
	15oQ==
X-Gm-Message-State: AMke39nDtLkstVVjxa+ho9GPXRSj9VePVOFStEeWlQ04HXo0buDneLtevjJWxbDvZhps7oNWqnZ8xILiNIaLrQ==
X-Received: by 10.28.169.87 with SMTP id s84mr22662859wme.77.1488985831238;
	Wed, 08 Mar 2017 07:10:31 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.126.141 with HTTP; Wed, 8 Mar 2017 07:10:10 -0800 (PST)
In-Reply-To: <CAJTo0LbfX7tfNxuBB2df3XYvM2zKEDis4zMtpD3KcgEaQtJk3A@mail.gmail.com>
References: <5b2fcd4d-acd2-bfe3-5d91-1f713054ad92@fridu.net>
	<CAJTo0LbfX7tfNxuBB2df3XYvM2zKEDis4zMtpD3KcgEaQtJk3A@mail.gmail.com>
From: Dominig Ar Foll <dominig.arfoll@fridu.net>
Date: Wed, 8 Mar 2017 16:10:10 +0100
Message-ID: <CADG2P4VOkc=f6-F8GwqM91MHY9Trw8A=7XU0skohOnsAxP+zJg@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: gst-plugins-bad- Patch fails 'ensure-valid-sentinels-for-gst_structure_get-etc.patch'
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
X-List-Received-Date: Wed, 08 Mar 2017 15:10:34 -0000
Content-Type: multipart/alternative; boundary=001a114b41ea8c2bf6054a398791

--001a114b41ea8c2bf6054a398791
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Ross,

yes, I now that I build the latest.
I am checking in advance of phase what will break in Automotive Grade Linux
(AGL) when 2.3 is coming out of the wood.

By the side, I also wants a 4.10 kernel for some test on virtualisation.

Regards.

Dominig
Le 08/03/2017 =C3=A0 15:33, Burton, Ross a =C3=A9crit :


On 8 March 2017 at 14:29, Dominig ar Foll (Intel Open Source) <
dominig.arfoll@fridu.net> wrote:

> ERROR: Task (/home/dominig/AGL/poky/meta/recipes-multimedia/gstreamer/gst=
reamer1.0-plugins-bad_git.bb:do_patch) failed with exit code '1'
>
> Are you aware that you're building the _git recipe and not the release?
Ross

--=20
Dominig ar Foll
Senior Software Architect
Intel Open Source Technology Centre

--001a114b41ea8c2bf6054a398791
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000">
    <font size=3D"-1">Ross,<br>
      <br>
      yes, I now that I build the latest.<br>
      I am checking in advance of phase what will break in Automotive
      Grade Linux (AGL) when 2.3 is coming out of the wood.<br>
      <br>
      By the side, I also wants a 4.10 kernel for some test on
      virtualisation.<br>
      <br>
      Regards.<br>
      <br>
      Dominig</font><br>
    <div class=3D"m_6538827729310219236moz-cite-prefix">Le 08/03/2017 =C3=
=A0 15:33, Burton, Ross a
      =C3=A9crit=C2=A0:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div class=3D"gmail_extra"><br>
          <div class=3D"gmail_quote">On 8 March 2017 at 14:29, Dominig ar
            Foll (Intel Open Source) <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:dominig.arfoll@fridu.net" target=3D"_blank">dominig.arfoll@fridu.net</a>&=
gt;</span>
            wrote:<br>
            <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">
              <pre class=3D"m_6538827729310219236m_-3444064254734171432moz-=
signature" cols=3D"72">ERROR: Task (/home/dominig/AGL/poky/meta/r<wbr>ecipe=
s-multimedia/gstreamer/gs<wbr><a href=3D"http://treamer1.0-plugins-bad_git.=
bb">treamer1.0-plugins-bad_git.bb</a>:<wbr>do_patch) failed with exit code =
&#39;1&#39;
</pre></blockquote></div>Are you aware that you&#39;re building the _git re=
cipe and not the release?</div><div class=3D"gmail_extra">
</div><div class=3D"gmail_extra">Ross</div></div>



</blockquote>
<pre class=3D"m_6538827729310219236moz-signature" cols=3D"72">--=20
Dominig ar Foll
Senior Software Architect
Intel Open Source Technology Centre</pre></div></div>

--001a114b41ea8c2bf6054a398791--
