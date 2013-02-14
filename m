Return-Path: <scancool@yahoo.com>
Received: from nm6-vm0.bullet.mail.bf1.yahoo.com
	(nm6-vm0.bullet.mail.bf1.yahoo.com [98.139.213.146])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id C7536E003BC
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2013 10:47:42 -0800 (PST)
Received: from [98.139.215.140] by nm6.bullet.mail.bf1.yahoo.com with NNFMP;
	14 Feb 2013 18:47:42 -0000
Received: from [98.139.212.237] by tm11.bullet.mail.bf1.yahoo.com with NNFMP;
	14 Feb 2013 18:47:42 -0000
Received: from [127.0.0.1] by omp1046.mail.bf1.yahoo.com with NNFMP;
	14 Feb 2013 18:47:42 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 114422.33898.bm@omp1046.mail.bf1.yahoo.com
Received: (qmail 80785 invoked by uid 60001); 14 Feb 2013 18:47:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1360867661; bh=h7khNgVK7uJ/4iPwcA55bGFsFLB9hNPCEEDDRilK1d4=;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:Message-ID:Date:From:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=OlPMi33QbEFXTcpT2khBgumUd7rIUn8l4B3Wux1vvxyHiYLa3nzI1boQaPo1VHv3LtacykndqUCzSPTIcZPG4NycA32DN1sDOhsMcugeUebGjvV/TLWaTVUj2VNqQjYycv0j8Y1eqlmK0I9QYvOPcCu17GmwqCX5Ak5kDDBjycw=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:Message-ID:Date:From:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=M0e5eEDcyAPJC9G7y9Mlm8RBZgbpYHDHiuyQpiYQtyxBJuFeT3fjDnre/ObbijeJaDZ9R0uyyVidydKBVhT6ca4rkjCEeGrJqUuaMjtHmjmUiQtHvqAEDnGAa/3m+DBGzyPJskftrL9aE4oEY5+4dprbbGGsCaJnO8+IhT2cY44=;
X-YMail-OSG: wXMCLMcVM1l8FgDQKDgSIq52cckCSPchu7Du5KmtaLEwOyy
	Q.nYzzIOS9hTknLhl.8wyGGZQfec0nTcgSN51pD6SCe6ZXbxIAUPaKneM95X
	uvVCGzOmLfYONGGKpm3922nEaLu9YnZGApAXwIfqZ21O0X8ksklSj5XwWY3m
	WelS5rYo_sbUtH0Hgrr5bRq_LMYMoaYShVE0PCnsrH4urw0cFW6zmtNsXEiQ
	sPeVXud0CXyxm2fhAcG1HdDdny8cssFsMUvo2UmIFGL_rITacvPqh4xG9kQ8
	UhcobXA8GJFmgj6rXt3U.8VYgbHy_I1HK24er0akusO5DRreO8NFtPUavATo
	5tWYyclnj5_y5YGDgNnOUvGublU25K_bo9GVqITg4qQfHxaCBdY1f7kZL1bY
	kkS5sUdXAecm0Zn3k4FjmBQ3a2W9VJVVVPA1j2SzPowHBP9V5hN5QP.h.6Uh
	Kjf0qQ7akxToYo8RfWNdj4mPLhPFWZZWKKiaY.QIXqoEkd8WA9C5mBmW9n85
	NbkFJvkF0XvQ82A--
Received: from [64.62.111.10] by web140001.mail.bf1.yahoo.com via HTTP;
	Thu, 14 Feb 2013 10:47:41 PST
X-Rocket-MIMEInfo: 001.001,
	VGhhbmsgeW91IFRyZXZvciwgZ3JlYXQgaW5mb3JtYXRpb24hISENCg0KDQotLS0gT24gVGh1LCAyLzE0LzEzLCBUcmV2b3IgV29lcm5lciA8dHdvZXJuZXJAZ21haWwuY29tPiB3cm90ZToNCg0KRnJvbTogVHJldm9yIFdvZXJuZXIgPHR3b2VybmVyQGdtYWlsLmNvbT4NClN1YmplY3Q6IFJlOiBbeW9jdG9dIHNlbGVjdCBpbnN0YWxsYXRpb24gcGFja2FnZXMNClRvOiAiQW5kcmUgQmVsbGEiIDxzY2FuY29vbEB5YWhvby5jb20.DQpDYzogInlvY3RvQHlvY3RvcHJvamVjdC5vcmciIDx5b2N0b0B5b2N0b3Byb2oBMAEBAQE-
X-Mailer: YahooMailClassic/15.1.2 YahooMailWebService/0.8.133.508
Message-ID: <1360867661.80211.YahooMailClassic@web140001.mail.bf1.yahoo.com>
Date: Thu, 14 Feb 2013 10:47:41 -0800 (PST)
From: Andre Bella <scancool@yahoo.com>
To: Trevor Woerner <twoerner@gmail.com>
In-Reply-To: <CAHUNapRf1BytAVFcxmzPZfbvSTYDmaKsWBznGC9XAFsh+OqG1g@mail.gmail.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: select installation packages
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
X-List-Received-Date: Thu, 14 Feb 2013 18:47:43 -0000
Content-Type: multipart/alternative;
	boundary="1722594484-1889764112-1360867661=:80211"

--1722594484-1889764112-1360867661=:80211
Content-Type: text/plain; charset=us-ascii

Thank you Trevor, great information!!!


--- On Thu, 2/14/13, Trevor Woerner <twoerner@gmail.com> wrote:

From: Trevor Woerner <twoerner@gmail.com>
Subject: Re: [yocto] select installation packages
To: "Andre Bella" <scancool@yahoo.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thursday, February 14, 2013, 11:00 AM

On Thu, Feb 14, 2013 at 12:44 PM, Andre Bella <scancool@yahoo.com> wrote:
> Thanks but I'm not sure if you understood, with hob you can only uninstall
> after the image has been build , were you able to select what to install before building the image? same as buildroot?

Yes.

Once you have selected your "machine" and "base image", if you click
on "Edit Image" (bottom right) you can add (or remove) packages before
building.

--1722594484-1889764112-1360867661=:80211
Content-Type: text/html; charset=us-ascii

<table cellspacing="0" cellpadding="0" border="0" ><tr><td valign="top" style="font: inherit;">Thank you Trevor, great information!!!<br><br><br>--- On <b>Thu, 2/14/13, Trevor Woerner <i>&lt;twoerner@gmail.com&gt;</i></b> wrote:<br><blockquote style="border-left: 2px solid rgb(16, 16, 255); margin-left: 5px; padding-left: 5px;"><br>From: Trevor Woerner &lt;twoerner@gmail.com&gt;<br>Subject: Re: [yocto] select installation packages<br>To: "Andre Bella" &lt;scancool@yahoo.com&gt;<br>Cc: "yocto@yoctoproject.org" &lt;yocto@yoctoproject.org&gt;<br>Date: Thursday, February 14, 2013, 11:00 AM<br><br><div class="plainMail">On Thu, Feb 14, 2013 at 12:44 PM, Andre Bella &lt;<a ymailto="mailto:scancool@yahoo.com" href="/mc/compose?to=scancool@yahoo.com">scancool@yahoo.com</a>&gt; wrote:<br>&gt; Thanks but I'm not sure if you understood, with hob you can only uninstall<br>&gt; after the image has been build , were you able to select what to install before building
 the image? same as buildroot?<br><br>Yes.<br><br>Once you have selected your "machine" and "base image", if you click<br>on "Edit Image" (bottom right) you can add (or remove) packages before<br>building.<br></div></blockquote></td></tr></table>

--1722594484-1889764112-1360867661=:80211--
