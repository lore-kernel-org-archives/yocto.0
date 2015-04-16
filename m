Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8B3FE008F6; Thu, 16 Apr 2015 07:36:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f47.google.com (mail-qg0-f47.google.com
	[209.85.192.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A765E00306
	for <yocto@yoctoproject.org>; Thu, 16 Apr 2015 07:36:01 -0700 (PDT)
Received: by qgej70 with SMTP id j70so6548810qge.2
	for <yocto@yoctoproject.org>; Thu, 16 Apr 2015 07:36:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=50FP7e2+51I97ovC19UtL2Bk87b32+HUFlL39vQYgDs=;
	b=PdLr61S8MXdoo86tF/2amJD4gX0NFxiurbVgxSUC1pI/7vNHrdvoMbhVPR94pXuHBQ
	AsplIOAKIoLFUeIF5jM81FsPIW9EhLbl+sPWMZLrI5j04JdmX/rXHw07R5RIifHMPdsu
	XWQqY2l8fxOoLJS08Y1IgNMt1M4fQgx0b20MBLExoUioyR/eSJ+WwnK9rXt3qQpKjfd5
	tyxZh2qh0CdiviVH/DtGe5WKrx0WXm2htGhgrtgLhSYQRSiQFt6Z9qExcpZSUlyFBUXX
	baF3/29anZC09s0KDIOPhvVEmU7lf5wPeoftkvxjP6z6U7WHwmIvpHow9/MB+l4H4yXU
	IJdg==
X-Received: by 10.55.43.220 with SMTP id r89mr62526115qkr.27.1429194960254;
	Thu, 16 Apr 2015 07:36:00 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.140.108.34 with HTTP; Thu, 16 Apr 2015 07:35:40 -0700 (PDT)
In-Reply-To: <CAP71WjyfbFWiTdGt5FQ46MK1w_3wf9g50mrAixaRDRfC4t7Dug@mail.gmail.com>
References: <552FA28B.5010507@actia.se>
	<14610153.uBZ2VKfICl@peggleto-mobl.ger.corp.intel.com>
	<20150416131144.GA9092@ad.chargestorm.se>
	<CAP71WjyfbFWiTdGt5FQ46MK1w_3wf9g50mrAixaRDRfC4t7Dug@mail.gmail.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Thu, 16 Apr 2015 07:35:40 -0700
X-Google-Sender-Auth: LJPulqG3vcR5y7xiWjFVkBDLmGU
Message-ID: <CABcZANkZpNCrYKjS0DYP8kqmeQ2+ax=87Cox1LQge3jeAA4f7Q@mail.gmail.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Badly formatted subpath for git SRC_URI deletes portions of hard drive.
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
X-List-Received-Date: Thu, 16 Apr 2015 14:36:03 -0000
Content-Type: multipart/alternative; boundary=001a1149442cebbdd70513d86137

--001a1149442cebbdd70513d86137
Content-Type: text/plain; charset=UTF-8

On Thu, Apr 16, 2015 at 7:25 AM, Nicolas Dechesne <
nicolas.dechesne@linaro.org> wrote:

> On Thu, Apr 16, 2015 at 3:11 PM, Anders Darander <anders@chargestorm.se>
> wrote:
>
>> > > Running the recipe resulted in do_fetch (or do_unpack) failing again
>> and
>> > > complaining about missing files. This time the deletion was on a much
>> > > greater scale, it had deleted so much of my home-dir that my user
>> > > account was rendered entirely useless. The fastest way to recover this
>> > > time was re-installing the machine.
>>
>> It's most likely a call to bb.utils.prunedir(destdir), with destdir
>> being set to '/'...
>
>
>
> ouch... this is a bit scary ;-)
>
> maybe we should assert the folder name is 'sane' when we do destructive
> operations like that. e.g. check that we are in TMPDIR, or TOPDIR..
>
> hopefully nobody does sudo bitbake ;-)
>

This is scary indeed. We definitely need to be more careful about calls to
dirname/basename with paths with a trailing or leading / in general, and
especially for removals, and just need to do more path
sanitization/normalization probably..

>>> def dirsplit(p):
...     return os.path.dirname(p), os.path.basename(p)
...
>>> dirsplit('/usr/bin/foo')
('/usr/bin', 'foo')
>>> dirsplit('/usr/bin/')
('/usr/bin', '')
>>> dirsplit('/usr/bin')
('/usr', 'bin')
>>> dirsplit('/bin')
('/', 'bin')
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a1149442cebbdd70513d86137
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, Apr 16, 2015 at 7:25 AM, Nicolas Dechesne <span dir=3D"ltr">&lt;<a =
href=3D"mailto:nicolas.dechesne@linaro.org" target=3D"_blank">nicolas.deche=
sne@linaro.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rg=
b(204,204,204);border-left-style:solid;padding-left:1ex"><span class=3D""><=
div class=3D"gmail_extra"><div class=3D"gmail_quote">On Thu, Apr 16, 2015 a=
t 3:11 PM, Anders Darander <span dir=3D"ltr">&lt;<a href=3D"mailto:anders@c=
hargestorm.se" target=3D"_blank">anders@chargestorm.se</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:so=
lid;padding-left:1ex"><span>&gt; &gt; Running the recipe resulted in do_fet=
ch (or do_unpack) failing again and<br>
&gt; &gt; complaining about missing files. This time the deletion was on a =
much<br>
&gt; &gt; greater scale, it had deleted so much of my home-dir that my user=
<br>
&gt; &gt; account was rendered entirely useless. The fastest way to recover=
 this<br>
&gt; &gt; time was re-installing the machine.<br>
<br>
</span>It&#39;s most likely a call to bb.utils.prunedir(destdir), with dest=
dir<br>
being set to &#39;/&#39;...</blockquote></div><br><br></div></span><div cla=
ss=3D"gmail_extra">ouch... this is a bit scary ;-)<br><br></div><div class=
=3D"gmail_extra">maybe we should assert the folder name is &#39;sane&#39; w=
hen we do destructive operations like that. e.g. check that we are in TMPDI=
R, or TOPDIR.. <br><br></div><div class=3D"gmail_extra">hopefully nobody do=
es sudo bitbake ;-)</div></blockquote></div><br>This is scary indeed. We de=
finitely need to be more careful about calls to dirname/basename with paths=
 with a trailing or leading / in general, and especially for removals, and =
just need to do more path sanitization/normalization probably..</div><div c=
lass=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><div class=3D"gma=
il_extra">&gt;&gt;&gt; def dirsplit(p):</div><div class=3D"gmail_extra">...=
 =C2=A0 =C2=A0 return os.path.dirname(p), os.path.basename(p)</div><div cla=
ss=3D"gmail_extra">...</div><div class=3D"gmail_extra">&gt;&gt;&gt; dirspli=
t(&#39;/usr/bin/foo&#39;)</div><div class=3D"gmail_extra">(&#39;/usr/bin&#3=
9;, &#39;foo&#39;)</div><div class=3D"gmail_extra">&gt;&gt;&gt; dirsplit(&#=
39;/usr/bin/&#39;)</div><div class=3D"gmail_extra">(&#39;/usr/bin&#39;, &#3=
9;&#39;)</div><div class=3D"gmail_extra">&gt;&gt;&gt; dirsplit(&#39;/usr/bi=
n&#39;)</div><div class=3D"gmail_extra">(&#39;/usr&#39;, &#39;bin&#39;)</di=
v><div class=3D"gmail_extra">&gt;&gt;&gt; dirsplit(&#39;/bin&#39;)</div><di=
v class=3D"gmail_extra">(&#39;/&#39;, &#39;bin&#39;)</div>-- <br><div class=
=3D"gmail_signature">Christopher Larson<br>clarson at kergoth dot com<br>Fo=
under - BitBake, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior S=
oftware Engineer, Mentor Graphics</div>
</div></div>

--001a1149442cebbdd70513d86137--
