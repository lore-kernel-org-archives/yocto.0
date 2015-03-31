Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E33AE006E9; Tue, 31 Mar 2015 14:26:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qc0-f170.google.com (mail-qc0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C49BE0056E
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 14:26:22 -0700 (PDT)
Received: by qcgx3 with SMTP id x3so25724545qcg.3
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 14:26:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Grv0iv8kAEThdiEy+PFbTuuIIyDd6L8pmLc1X2fc7kk=;
	b=N85WeBJ8zQfRAYSInHb3nuWzMGcs6Ga88yLSN3URgevzu9nrSdrBLn/bbzQhYxZNYI
	ddtsZuW8fY9puty2L1I1ZHALw1PQj1pgPqvjkIlCpH1FgDxiAGuOcN4M+5uMApEfZpyU
	/jusyLJYnn4rcWnSUMdG1kZvcgYzqoN20WZqceV/1FVixbnzLh40jjdJyoO7Kfc9V4+R
	G8c1CdjQTVojRJ70LCRjThl1DW2QYeoRHvje8tU+xEiAclRFijpUeCkT/G35bZ/Nj5bQ
	MK5d8FUcqWRgX/AS0FwU7DEJ1x1bb49RGCe5tAs3VtzJ++y2LkYE3ogrFNNfRbZ4cZux
	inkA==
X-Gm-Message-State: ALoCoQn9fY8/Dtcjoj4YnvG4yPlT1uRlfHe6n/1o5oIvw6bScKqL0EnIBrkctPc6hchkETzaNK10
X-Received: by 10.55.31.10 with SMTP id f10mr83591087qkf.58.1427837182112;
	Tue, 31 Mar 2015 14:26:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.203 with HTTP; Tue, 31 Mar 2015 14:26:01 -0700 (PDT)
In-Reply-To: <551ABE39.5050503@gmail.com>
References: <551ABE39.5050503@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 31 Mar 2015 22:26:01 +0100
Message-ID: <CAJTo0LbL4oNgV3iynum07uGjo0m5DGJMfsjmSq_GEhAgyze++A@mail.gmail.com>
To: akuster808 <akuster808@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] package update staging
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
X-List-Received-Date: Tue, 31 Mar 2015 21:26:24 -0000
Content-Type: multipart/alternative; boundary=001a1147ebda0980eb05129c40c0

--001a1147ebda0980eb05129c40c0
Content-Type: text/plain; charset=UTF-8

On 31 March 2015 at 16:33, akuster808 <akuster808@gmail.com> wrote:

> now that fido is nearing, what is the best method for staging package
> updates meant for oe-core?
>

Send patches now if you wish, both me and Richard have started collating
patches that are good for master.

Ross

--001a1147ebda0980eb05129c40c0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 31 March 2015 at 16:33, akuster808 <span dir=3D"ltr">&lt;<a href=3D"mail=
to:akuster808@gmail.com" target=3D"_blank">akuster808@gmail.com</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div id=3D":1dw" class=3D"a3s"=
 style=3D"overflow:hidden">now that fido is nearing, what is the best metho=
d for staging package updates meant for oe-core?<br></div></blockquote></di=
v><br>Send patches now if you wish, both me and Richard have started collat=
ing patches that are good for master.</div><div class=3D"gmail_extra"><br><=
/div><div class=3D"gmail_extra">Ross</div></div>

--001a1147ebda0980eb05129c40c0--
