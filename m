Return-Path: <rstreif@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96152E00559; Tue,  8 Jul 2014 16:27:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f171.google.com (mail-ie0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56D13E00547
	for <yocto@yoctoproject.org>; Tue,  8 Jul 2014 16:27:21 -0700 (PDT)
Received: by mail-ie0-f171.google.com with SMTP id at1so955708iec.2
	for <yocto@yoctoproject.org>; Tue, 08 Jul 2014 16:27:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=gCSysSxaKNZaZMj1eQwTX8yL3zTOalzX6jMexfgsVsw=;
	b=TxqbuUKIBlnm+SPaqlT4Ox+DEO45VGeejpPdM+eBiSkvC+S3UZ3N0n3MUDGicyx1l4
	Hgcf66dLMdXV89Ko7cH7g+87ebfjwntkssX8jS+74fFZF/9+QLSYC8/4xCiz3d3Xtid/
	wxrUkGsAkSteixbQNp5IqvLVcJu/cf7bwpbrk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=gCSysSxaKNZaZMj1eQwTX8yL3zTOalzX6jMexfgsVsw=;
	b=RRFWxg7dtY/RMPoLMuRSaoIJp69iqvkKIS4PJWNm3sMwmLv0ya2UHXn9vSuz2gZ90M
	XqvWePPTTKEAkm4cznejIq3oCJ6n7flEI3dtN/jMuj7daJlCUv7BQkRuxws1ph8EG08w
	kNpAPHEwkWTHQ//37cZuF5UAHX0CYfF5ogOSImCjE2hOK/I6s2Z9yN6+QA+nM5HLWHUW
	9iAud9kFIB5QmqlZRz+Jt7trreoMUQcMHpd87r+sHLymbRZWdM7HJlfFQdLSgHHpxM27
	w0602yK4p4gejgo8eg53tThnIFcokMoxedKCFa4VemS81+/DkchiRKr70OaoG973CIey
	97yw==
X-Gm-Message-State: ALoCoQmmKpMwYxSQkmuxp43cksP+UOylqwmvaDEWhtD0hro5eOdVopgQXh2iSIzC/w+3XhAX+Xgv
MIME-Version: 1.0
X-Received: by 10.50.114.226 with SMTP id jj2mr7790744igb.27.1404862041293;
	Tue, 08 Jul 2014 16:27:21 -0700 (PDT)
Received: by 10.50.225.73 with HTTP; Tue, 8 Jul 2014 16:27:21 -0700 (PDT)
In-Reply-To: <CAJTo0LaKd8t3mDt2N45OOF0C=SNwtGq6dOqHEJNRLSfh4QPuCQ@mail.gmail.com>
References: <CA+gsK-ppcQmqUwfJSs1MdzqwBPWkJm=5Ok3mx9Mxnfs7yPowLw@mail.gmail.com>
	<CAJTo0LaKd8t3mDt2N45OOF0C=SNwtGq6dOqHEJNRLSfh4QPuCQ@mail.gmail.com>
Date: Tue, 8 Jul 2014 16:27:21 -0700
Message-ID: <CA+gsK-qQiph4h-an51tFzmnZaF7H7ndfc49xEe7hW8q0AOUXpw@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: core-image-weston: do_rootfs failure installing libcogl
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
X-List-Received-Date: Tue, 08 Jul 2014 23:27:26 -0000
Content-Type: multipart/alternative; boundary=089e0122ac54ee1fb504fdb6ee0f

--089e0122ac54ee1fb504fdb6ee0f
Content-Type: text/plain; charset=UTF-8

> Can you file a bug?
>


Thanks, Ross. Done. 6514

--089e0122ac54ee1fb504fdb6ee0f
Content-Type: text/html; charset=UTF-8

<div dir="ltr"><br><div class="gmail_extra"><div class="gmail_quote"><blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
Can you file a bug?<br>
<span class="HOEnZb"></span></blockquote><div><br><br></div><div>Thanks, Ross. Done. 6514 <br></div></div></div></div>

--089e0122ac54ee1fb504fdb6ee0f--
