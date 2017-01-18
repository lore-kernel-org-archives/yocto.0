Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B194BE00995; Wed, 18 Jan 2017 00:40:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f169.google.com (mail-yb0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4ABD9E00985
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 00:40:52 -0800 (PST)
Received: by mail-yb0-f169.google.com with SMTP id l23so1889434ybj.2
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 00:40:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=aeVPenGO5onm0FVPSzgeclXeAFTXYxkpONm5PufEGCM=;
	b=qdUuKB+pF6fb+4CE8tebD0xkhbQmNeywokvqauLq1iK+WsKWb90/BR0iNdjKdRUBlt
	YZVTJEfHOHaFhazzrR0pSnB1a6o8+fknQHZYYKTJUhcjU4FfaS8TfpK/RjjRvkypkp7U
	pUGkd2az4Y5P44DxXLWQRuvhnX4RjoLMbBrw1cc1HWus1+KlHQxsyN5GyVs9J6/P2Q1r
	leNdnLrIbIiQpNru0N0onEK9sOUED+YcQaSsBf9656WyEdamSKCdXArFO2hOkhqOuXJG
	CRYxy6zrJDNkOXTmwRi/rGZT/J7c79j3DSmfa9YvyV17KiEr8ffHrYTKAsFP9Jc3ePRF
	AlEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=aeVPenGO5onm0FVPSzgeclXeAFTXYxkpONm5PufEGCM=;
	b=F+efKbttmKffI3tiHBfKIABLQ8U/3nzDtDL392b9hyqLAxMuGPV0WaKcqcM1zx/9BY
	13ldvTPjERUMCyvKhE2T5bAy+jz9KzAGaUzZb60ZSx8/roWIjD0abwrhmj8DxhH9hE2E
	TnFtEg553M6fjYpHxT9P+fA+0/XtmJqZzcobXREwXpNUqYbN7ny7rllkys721ziZmCbP
	IFbt6C59jGWJmyECKLmCc0V+5Q6Gvd+9TAM95sJ1JwVFTlWXNvFZ1AgvrUpwiBTnICxh
	IBL0GibcwDxUN02R9grDq3L9Zet2KH55gB7Q4xbksp2J5/YjHtI/bd+3l1j3GZqxCNDP
	QMBg==
X-Gm-Message-State: AIkVDXKVxnNoFaN1wh1ZurwxvMC3oUYxXOHsNltRi4zuYSFa2ELrQdm0/hmj/B2MxpEllc/oXum/Ag09c+Bfcv4k
X-Received: by 10.37.174.37 with SMTP id a37mr1361026ybj.189.1484728851450;
	Wed, 18 Jan 2017 00:40:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.13.234.11 with HTTP; Wed, 18 Jan 2017 00:40:21 -0800 (PST)
In-Reply-To: <2683342.SVnRAGIE1W@peggleto-mobl.ger.corp.intel.com>
References: <2683342.SVnRAGIE1W@peggleto-mobl.ger.corp.intel.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Wed, 18 Jan 2017 10:40:21 +0200
Message-ID: <CAHiDW_F=ybZibjGyjMpg4Gi+sEhSQPw6eVmGm7yxeUAj9mqFtQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	openembedded-architecture@lists.openembedded.org,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [Openembedded-architecture] Patchwork and incoming patch testing
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
X-List-Received-Date: Wed, 18 Jan 2017 08:40:53 -0000
Content-Type: multipart/alternative; boundary=f403045dba8ac7ae7505465a5fb5

--f403045dba8ac7ae7505465a5fb5
Content-Type: text/plain; charset=UTF-8

This looks great, thanks.

On 17 January 2017 at 20:05, Paul Eggleton <paul.eggleton@linux.intel.com>
wrote:

> In any event we are now finally in the
> position where our patchwork instance can be relied upon to collect emails,
> and the UI is much improved. This should give us a bit more visibility into
> where patches are at in the process, although we are still working on a few
> places where patch series status needs to be updated (e.g. when a patch
> goes
> into testing).


What's the plan for these status updates -- is the idea that you go to
patchwork UI to see the state of a specific patch set?
Or maybe a reply to either patch sender or even the ML?

On top of patchwork we have built a simple smoke-testing framework called
> "patchtest" [5] along with a suite of corresponding tests for OE [6]. These
> tests are fairly simplistic at this point but check the basics such as
> whether
> a patch has been properly signed off, etc. We should soon start seeing
> replies
> sent to the mailing list and to submitters with results if there are any
> failures, saving us from noticing and pointing out some of the more obvious
> classes of mistakes.


 Is there a reason for patchwork only showing "success" or "failure" in the
web ui, instead of linking to test results at least in in the failure case?



 - Jussi

--f403045dba8ac7ae7505465a5fb5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div>This looks great, thanks.<=
/div><div class=3D"gmail_quote"><br></div><div class=3D"gmail_quote">On 17 =
January 2017 at 20:05, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.inte=
l.com</a>&gt;</span> wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><span style=3D"font-size:12.8px">In any event we are now finall=
y in the<br></span><span style=3D"font-size:12.8px">position where our patc=
hwork instance can be relied upon to collect emails,<br></span><span style=
=3D"font-size:12.8px">and the UI is much improved. This should give us a bi=
t more visibility into<br></span><span style=3D"font-size:12.8px">where pat=
ches are at in the process, although we are still working on a few<br></spa=
n><span style=3D"font-size:12.8px">places where patch series status needs t=
o be updated (e.g. when a patch goes<br></span><span style=3D"font-size:12.=
8px">into testing).</span></blockquote><div class=3D"gmail_quote"><span sty=
le=3D"font-size:12.8px"><br></span></div><div class=3D"gmail_quote"><span s=
tyle=3D"font-size:12.8px">What&#39;s the plan for these status updates -- i=
s the idea that you go to patchwork UI to see the state of a specific patch=
 set?</span></div><div class=3D"gmail_quote"><span style=3D"font-size:12.8p=
x">Or maybe a reply to either patch sender or even the ML?</span></div><div=
 class=3D"gmail_quote"><span style=3D"font-size:12.8px"><br></span></div><d=
iv class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
On top of patchwork we have built a simple smoke-testing framework called<b=
r>
&quot;patchtest&quot; [5] along with a suite of corresponding tests for OE =
[6]. These<br>
tests are fairly simplistic at this point but check the basics such as whet=
her<br>
a patch has been properly signed off, etc. We should soon start seeing repl=
ies<br>
sent to the mailing list and to submitters with results if there are any<br=
>
failures, saving us from noticing and pointing out some of the more obvious=
<br>
classes of mistakes.</blockquote><div><br></div><div>=C2=A0Is there a reaso=
n for patchwork only showing &quot;success&quot; or &quot;failure&quot; in =
the web ui, instead of linking to test results at least in in the failure c=
ase?</div><div><br></div><div><br></div><div><br></div><div>=C2=A0- Jussi</=
div><div><br></div></div></div></div>

--f403045dba8ac7ae7505465a5fb5--
