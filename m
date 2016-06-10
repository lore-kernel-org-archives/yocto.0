Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32C99E00D00; Fri, 10 Jun 2016 01:42:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 513AFE00CC7
	for <yocto@yoctoproject.org>; Fri, 10 Jun 2016 01:42:32 -0700 (PDT)
Received: by mail-io0-f177.google.com with SMTP id 5so60013597ioy.1
	for <yocto@yoctoproject.org>; Fri, 10 Jun 2016 01:42:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=OWjmMT2FPHu0IyDuG1c+G5Wd9gCov+PKBbDt8CzsDjs=;
	b=Ml2qvK7Wl5zRaVvRV1eHBnEd3I7eLbzHDjS7ccuMpJKBC5ZUWNSZ448J+ocQYGT5rj
	vDLY1Jc6kYCgdgOcMG5ozfkUdhVqEF6McrKJTeRrZWjlex8XEpGkRBb20so4gTNsExkZ
	6VxuUMiXPuLfIdP7xxDXPADJVsmL+54eWS5EoMkD3FZkpkIMmb4UKBr6XTYuL10UxCTw
	K+Wfju8ddb3bcTdruGZpeLiLca609qaMivEoSnwi/K3msK14nVtCFvr7f+nH4R16xejv
	rURIQ5dt5zRdpNzjEXIzBNa2NgMe10z5c0kEWrmmeIB38KYAfj8eUBBPLgiPUpIQok94
	OA4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=OWjmMT2FPHu0IyDuG1c+G5Wd9gCov+PKBbDt8CzsDjs=;
	b=QCDeYoB1n2hSuWDc0aB+BAAH+exFVZYrBYUAqBvTJLR6oSmWTxDkyFfdSeio3MByDR
	wzFZXf+VBZ/7oUqaDpyjD9P4zpIrIqK2xk3rBvYjPInwcjrwLYMnsrM58cR4DDUj9MrL
	c3fsf5GbTQZsCX5ZU+QxODDtizLvmqmyiBa37mIkoI1sDgHT79xkBx6v88DiWitcguv0
	hUb7DJgoiFwKJk5CZI5U8KeQp2gig9SiqrF1UQs0R2NcVd0rKWdoVCkeMHtV9b2TON0p
	ejnqPK+k8SYDpFOGhhI/8IfTpKz2jgJOifpFseUOwAlE7jBVJN9MTqNrXA+DAExN0Lpd
	qClg==
X-Gm-Message-State: ALyK8tJcONvWwpfoZUSi18npVRDYxHAvtG0Mux0LLwTykBQOl5Q+Y8qvx+ERoasN8djouJRJ5o5PxaMIOlBxxESA
X-Received: by 10.107.135.137 with SMTP id r9mr2159810ioi.133.1465548152325;
	Fri, 10 Jun 2016 01:42:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Fri, 10 Jun 2016 01:42:12 -0700 (PDT)
In-Reply-To: <575A7CAF.2050207@mlbassoc.com>
References: <575A7B40.9050509@mlbassoc.com> <575A7CAF.2050207@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 10 Jun 2016 09:42:12 +0100
Message-ID: <CAJTo0LZenM_UO1QRzWCVDGyurcyzKNrYnHVYjmCSpyJNfjK85w@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Another python3 error?
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
X-List-Received-Date: Fri, 10 Jun 2016 08:42:35 -0000
Content-Type: multipart/alternative; boundary=001a113ec842055b4b0534e885a4

--001a113ec842055b4b0534e885a4
Content-Type: text/plain; charset=UTF-8

On 10 June 2016 at 09:39, Gary Thomas <gary@mlbassoc.com> wrote:

> Any hints on which (and why it's not being recommended by the sanity
> checker)?
>

It's not recommended by the sanity checker because its only needed by
depexp and on a X11-less build server will pull in vast numbers of packages.

It's the python2 GTK+2 bindings, so something like python-gtk is a good
start.

Ross

--001a113ec842055b4b0534e885a4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 10 June 2016 at 09:39, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mail=
to:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div id=3D":3j8" class=3D"a3s aXjCH =
m15539779920bdc87">Any hints on which (and why it&#39;s not being recommend=
ed by the sanity checker)?<br></div></blockquote><div><br></div><div>It&#39=
;s not recommended by the sanity checker because its only needed by depexp =
and on a X11-less build server will pull in vast numbers of packages.</div>=
<div><br></div><div>It&#39;s the python2 GTK+2 bindings, so something like =
python-gtk is a good start.</div><div><br></div><div>Ross</div></div><br></=
div></div>

--001a113ec842055b4b0534e885a4--
