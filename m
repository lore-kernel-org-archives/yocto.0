Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A90BEE00C7F; Mon,  8 Feb 2016 12:37:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18CF3E00C3E
	for <yocto@yoctoproject.org>; Mon,  8 Feb 2016 12:37:17 -0800 (PST)
Received: by mail-io0-f176.google.com with SMTP id d63so208246202ioj.2
	for <yocto@yoctoproject.org>; Mon, 08 Feb 2016 12:37:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=O6jXHenQA4f9wc5dbuglevjVEEb0jqbohazbN9rMeSw=;
	b=QK6nE8OBFDNAmsGn9X/uQ1s4G1npmswZGe5uPEj5GAteoruwlSvJEmtk+v55TBDHZu
	JgB7vlxXwGyDJA/NcrRf+g2qA6kEC6AgA/gBxXVeth04Scn04B2ZoG4oxytF6NqVUugl
	ps+9RT5TR0vYSwf1qnVxLTMe560ucUPraWQWI9cvVsjavMlkENEbC+hXuO2c0sMHBjRX
	bKu1ci61Pzys5Oy6ypDqScwFDCx2ZLfwqmWQ2bqCsAysrmvIZwfvk8oTeBp+F+ltcbEJ
	UDvLvT1D19XeDv4F7gt2rjm0kC0y58/4TiAtRKPZFrIBGoIUdJqt8wHqnjmSEGdus2AV
	/tgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=O6jXHenQA4f9wc5dbuglevjVEEb0jqbohazbN9rMeSw=;
	b=eB99GfXNQY2CEE03oRaxXXDC0P+pk4MVwPkha6yBRfKROpdrqLS/kKJyZLVWZj0AW+
	nj0c3nQyPD9L9TVKMd+r05g+/9JB/n6KRVYtr+prewJvOa10r5BAEyEmY7gJT+DuLLlb
	fkYznZBWfQZ7BMiR4G789H3oUhdvckI26j65lTDjA1OjKr5qNKORwg89UyP5CrNGq2gc
	ItjRSKQGkc+dmb17V6PSLWMvz/civyRF+OPM3/UnutKEdCq1Y/RfGTvHff3QMZgcF3Zf
	578hYyH8LEwyFmxEmO38j6gvLjxr10kvyKQoKdXFeewmK8F2ceDVwm39NfLHCe5gEda4
	Ds7w==
X-Gm-Message-State: AG10YOTP7rCLaSUzjxPMDUqyQH2sbgnjS8RbcbXHrzVbXud+A+J+YwzuwpYsCGxuZzZWDONncoG7gSB7jz+NCmW/
X-Received: by 10.107.137.92 with SMTP id l89mr18304643iod.133.1454963836973; 
	Mon, 08 Feb 2016 12:37:16 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Mon, 8 Feb 2016 12:36:57 -0800 (PST)
In-Reply-To: <CAJTo0LbKvXCKgzzMGC7P4bq65+n04kM3nL0f4+KXL3n+PP4QNw@mail.gmail.com>
References: <D3B58608AFC8B244BA0ACD53B2AE612598EEF5C6@vistrex4.vi.vector.int>
	<D3B58608AFC8B244BA0ACD53B2AE612598EEF622@vistrex4.vi.vector.int>
	<CAJTo0Lav44kxc8i-VDSEUrHdFAaC7kjrLG97w2pmOjw+TZvM0Q@mail.gmail.com>
	<D3B58608AFC8B244BA0ACD53B2AE612598EEF674@vistrex4.vi.vector.int>
	<CAJTo0LbKvXCKgzzMGC7P4bq65+n04kM3nL0f4+KXL3n+PP4QNw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 8 Feb 2016 20:36:57 +0000
Message-ID: <CAJTo0La3S1PuyndzXuEmEw2FWGf3UJFXdTgq1A=yQyjHhPiGPg@mail.gmail.com>
To: "Baumann, Michael" <Michael.Baumann@vector.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to create a named_pipe in my image
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
X-List-Received-Date: Mon, 08 Feb 2016 20:37:20 -0000
Content-Type: multipart/alternative; boundary=001a113ebdb4aa2756052b482ac1

--001a113ebdb4aa2756052b482ac1
Content-Type: text/plain; charset=UTF-8

On 8 February 2016 at 17:36, Burton, Ross <ross.burton@intel.com> wrote:

> So I had a quick look at this.  The fifo certainly ends up in the
> resulting ipk at least, but as you say package_qa hangs.  It's probably
> encountering a non-file and breaking somewhere.  A really nasty workaround
> until this is fixed would be to put in your recipe:
>

Found the bug - we were trying to open a fifo as a file to see if it was an
ELF binary, and reading an empty fifo blocks...  I've just send a patch to
the list that fixes this.

Ross

--001a113ebdb4aa2756052b482ac1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 8 February 2016 at 17:36, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"=
mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"gmail_extr=
a">So I had a quick look at this.=C2=A0 The <span class=3D"il">fifo</span> =
certainly ends up in the resulting ipk at least, but as you say package_qa =
hangs.=C2=A0 It&#39;s probably encountering a non-file and breaking somewhe=
re.=C2=A0 A really nasty workaround until this is fixed would be to put in =
your recipe:</div><div class=3D"gmail_extra"></div></blockquote></div><br>F=
ound the bug - we were trying to open a fifo as a file to see if it was an =
ELF binary, and reading an empty fifo blocks...=C2=A0 I&#39;ve just send a =
patch to the list that fixes this.</div><div class=3D"gmail_extra"><br></di=
v><div class=3D"gmail_extra">Ross</div></div>

--001a113ebdb4aa2756052b482ac1--
