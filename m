Return-Path: <ticotimo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65A65E00CF5; Tue, 31 Oct 2017 07:24:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ticotimo[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.194 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f194.google.com (mail-ua0-f194.google.com
	[209.85.217.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7472E00C78
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 07:24:12 -0700 (PDT)
Received: by mail-ua0-f194.google.com with SMTP id 47so12159381uas.8
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 07:24:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=tcyUVUikcQGTjMSunhZ85v7qzclHvbjGHj0r5kp0Nqg=;
	b=G0L/XNDtPYvooPNd9ERlvmMFdpaE3Vz+m4nOWWuu656HoRQWcmF9WpCL86kiOsBpRm
	nqMVAP9/45yweimWn7gZyRebE9on43WwbVPtWppOdRCcqW/soKfVYC0UUSS10WZEPw3Z
	2D0nWxdieUbk1GH6D9kRMNgahQAB+FpQ2bpki7JEGFFs7WAjfIb7ZrY9SstUj8X9+O8Q
	sUAga/Gr1toQABLyIZZvRpL/rPRC6wa8xTxBHraNJ6fMV8BW/5bGiLTsoHWP2IhI7FrW
	mG2A8QBOYu0kBTyldN3aydsVBGFbYLULSAnta4IYbIMkV8Pz3MDhToPY4HR5gZ2K82V/
	uxZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=tcyUVUikcQGTjMSunhZ85v7qzclHvbjGHj0r5kp0Nqg=;
	b=mfQScYHtDE6syRWqPzoDmpJl4hDJvoqRiqte63UoXpfg1DK4PrGU9Nnh7vXgryckEP
	8MjXvIW07V6DOQGj1RWWhM0RJL2LLn3yigDjiHKyucszJ7R9t1kz5YHpqbrUZc2JCH1i
	nuRu15BOJP0dpKkstNL3a/ZR+SZqhVdc7p2NFqHmezyApI/mWjZ4zE2RKW6rnnnvNy+7
	BhQBwTDzZhRG4hUL2pMi8h4YNnlOE8kCJj1okE02rYmUBDYCgaCe3xVVdwxlCqzQ9wd7
	cM8KuoFU6GGQklsnL4UC+cw/7HQTmeXxDrBKCwvJ5TYFNwjVf3k1fRXYbHUP5XkKAvtF
	ubow==
X-Gm-Message-State: AMCzsaWqg3HuGefBSw3jUuD/8kO/kVVoLKOZYH4ddzdbGoF28CD+X8/x
	eP+g0i0D88lk+cgHNZJ8GuFLmz/EaPwqUTdHeDc=
X-Google-Smtp-Source: ABhQp+REKc2FLAMvEojDK8nRn8vd3pgw6FbdDTfngUBX8XDYx6Sv+wmwe6pg8BfGudZcChoo3HW08nmBraNfw1b6qiM=
X-Received: by 10.176.7.73 with SMTP id h67mr1952238uah.109.1509459851432;
	Tue, 31 Oct 2017 07:24:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAOsp8o87Tu-jsEQts=f-kmM1mtwcMrDN0eM-Zs0w0c+iF36gFQ@mail.gmail.com>
	<CAMKF1spbS2++NDZ8=mifSPP+i-TOMn1bmNQTnx+H6HdwsPkaDQ@mail.gmail.com>
	<CAOsp8o_a353XUeojQdeLq-AuqL=eXNwBoma57=C6Cq=29q02GA@mail.gmail.com>
In-Reply-To: <CAOsp8o_a353XUeojQdeLq-AuqL=eXNwBoma57=C6Cq=29q02GA@mail.gmail.com>
From: Tim Orling <ticotimo@gmail.com>
Date: Tue, 31 Oct 2017 14:24:01 +0000
Message-ID: <CANx9H-Dt2iM0YVmSs_1JeAMw5g=P4ePtS_m_1gTaYy2tzag99w@mail.gmail.com>
To: Michael Habibi <mikehabibi@gmail.com>, Khem Raj <raj.khem@gmail.com>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Using site.conf
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
X-List-Received-Date: Tue, 31 Oct 2017 14:24:13 -0000
Content-Type: multipart/alternative; boundary="94eb2c123fe83f7a5f055cd88282"

--94eb2c123fe83f7a5f055cd88282
Content-Type: text/plain; charset="UTF-8"

http://www.yoctoproject.org/docs/2.4/mega-manual/mega-manual.html#user-configuration
On Tue, Oct 31, 2017 at 7:15 AM Michael Habibi <mikehabibi@gmail.com> wrote:

> Is there an example of this somewhere? I haven't had any luck in
> documentation or example code to see how to make the site.conf be used.
>
> On Mon, Oct 30, 2017 at 6:16 PM, Khem Raj <raj.khem@gmail.com> wrote:
>
>> On Fri, Oct 27, 2017 at 11:59 AM, Michael Habibi <mikehabibi@gmail.com>
>> wrote:
>> > I'm a bit confused about the usage of site.conf. I see a sample in the
>> poky
>> > distro area, but I'm not sure how this actually gets copied into a
>> site.conf
>> > and actually used by deployed versions of our distribution.
>> >
>> > Is there some extra step I need to take to ensure site.conf.sample from
>> my
>> > own distributions conf directory gets copied and actually used by our
>> > engineers' environments?
>>
>> yes, you need to do that as part of workspace setup.
>>
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c123fe83f7a5f055cd88282
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<a href=3D"http://www.yoctoproject.org/docs/2.4/mega-manual/mega-manual.htm=
l#user-configuration">http://www.yoctoproject.org/docs/2.4/mega-manual/mega=
-manual.html#user-configuration</a><br><div class=3D"gmail_quote"><div dir=
=3D"ltr">On Tue, Oct 31, 2017 at 7:15 AM Michael Habibi &lt;<a href=3D"mail=
to:mikehabibi@gmail.com">mikehabibi@gmail.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex"><div dir=3D"ltr">Is there an example of this some=
where? I haven&#39;t had any luck in documentation or example code to see h=
ow to make the site.conf be used.</div><div class=3D"gmail_extra"><br><div =
class=3D"gmail_quote">On Mon, Oct 30, 2017 at 6:16 PM, Khem Raj <span dir=
=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.kh=
em@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div c=
lass=3D"m_3463438953122150176HOEnZb"><div class=3D"m_3463438953122150176h5"=
>On Fri, Oct 27, 2017 at 11:59 AM, Michael Habibi &lt;<a href=3D"mailto:mik=
ehabibi@gmail.com" target=3D"_blank">mikehabibi@gmail.com</a>&gt; wrote:<br=
>
&gt; I&#39;m a bit confused about the usage of site.conf. I see a sample in=
 the poky<br>
&gt; distro area, but I&#39;m not sure how this actually gets copied into a=
 site.conf<br>
&gt; and actually used by deployed versions of our distribution.<br>
&gt;<br>
&gt; Is there some extra step I need to take to ensure site.conf.sample fro=
m my<br>
&gt; own distributions conf directory gets copied and actually used by our<=
br>
&gt; engineers&#39; environments?<br>
<br>
</div></div>yes, you need to do that as part of workspace setup.<br>
<span class=3D"m_3463438953122150176HOEnZb"><font color=3D"#888888"><br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
&gt;<br>
</font></span></blockquote></div><br></div>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--94eb2c123fe83f7a5f055cd88282--
