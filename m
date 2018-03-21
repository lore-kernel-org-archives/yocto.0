Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC7D2E00C27; Wed, 21 Mar 2018 08:24:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A431E00B58
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 08:24:03 -0700 (PDT)
Received: by mail-io0-f176.google.com with SMTP id h23so7094047iob.11
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 08:24:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=UpkaB5Q1GAM679yFRR+XFz5xDrAZSoO4S8wufRUpIDc=;
	b=rt+xm459bctWdbVRSkZdpV2pznnn+Ulx3abKkzROUWRj4n8oQKooo0aIcZUwl7Ap7u
	YGnvHNHYtbTYaHyU38QSe2jYJThSYOsDflkk9e+Xqfe/VffLpno+LmnjmJ7kf21qQmRr
	590TxmDfKJX+u8yOXFb1Sw3LvYQetVqmVry9KGkjQA7is1JqnJ/x/0OvnKMPsrYTqIGN
	C7nGsO+QTR5DB8CYXAPSM6AE+g1Qg8M+zi2GzHqVcLuvb2TCznEQ5hnV+jpeG2JWuMIz
	jKZ4Qj9fE75ozkB1bHCnkq5sUw2JA6dlPc1nY8rQvV2XN0O+AF5PT3y6JbQyTJqGSJc6
	/6Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=UpkaB5Q1GAM679yFRR+XFz5xDrAZSoO4S8wufRUpIDc=;
	b=WzE1xCC3BgFwPjZQyYsDYCgMMDW6J1t15KkTK+OfyiAt8q8csqFmotCAqFCXZpfJZc
	8k9Bu8ye0vjCJ4eXxROkrDQGimNrZ7iHQWTl4RiSBECWcbZ8UV1vIMVPuoeJR+i4HKze
	oUHWa0xskUjvfxNUgB5k4ZqVq0GCrj13P+Tt3kfJo+bhKVesvHRxHZC5j67soDqyaKgp
	TzDypjWTShYT89gVtKzGkTqrXZD6QHEdHr+lD4xaERZhPlpc6w2dFpqqzlFg5tpCLe0w
	fGypuaJsLcx0yMGT0rLb8vnJFVy70sjCfMPYto19e2MDz3iiMsKNjyXGTnxUSQgh2QJI
	c7tw==
X-Gm-Message-State: AElRT7EZ9i1ZX6rsnmbeA84H6CJJZtCEX5XiCVe/8kE+i3RptMVL7/Ww
	RQTo+KNqQWoI8TKO4USTD6gMOTF2noQMnvh9fTUA+A==
X-Google-Smtp-Source: AG47ELuDOJvi0EN1oaHyrxfiIQ7DaXe2NN7Z9a5+dN38X2Md+Tt1v2ksAzsY3wQcC/6FRHEyqnkyEaKJuJ5Qvk+Tu7w=
X-Received: by 10.107.161.200 with SMTP id k191mr20125141ioe.270.1521645842781;
	Wed, 21 Mar 2018 08:24:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Wed, 21 Mar 2018 08:23:42 -0700 (PDT)
In-Reply-To: <CAOT_U5Y+GLS1VU_hJs0fi1_Z0xDcL5eYMAzpgknD1aJ-GbKwiQ@mail.gmail.com>
References: <CAOT_U5Y+GLS1VU_hJs0fi1_Z0xDcL5eYMAzpgknD1aJ-GbKwiQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 21 Mar 2018 15:23:42 +0000
Message-ID: <CAJTo0LYrM=Amzk731zxmpx5wqaKCiRnA5NQ74nC=y3WSa2BN1Q@mail.gmail.com>
To: Alan Martinovic <alan.martinovic@senic.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>,
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
	linux-bluetooth@vger.kernel.org
Subject: Re: Building BlueZ from git in Yocto
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
X-List-Received-Date: Wed, 21 Mar 2018 15:24:04 -0000
Content-Type: multipart/alternative; boundary="001a113e9198ef36500567edc7c6"

--001a113e9198ef36500567edc7c6
Content-Type: text/plain; charset="UTF-8"

On 21 March 2018 at 15:15, Alan Martinovic <alan.martinovic@senic.com>
wrote:

>
> Building it with Yocto results in the mentioned error:
>
> | ../git/src/genbuiltin hostname wiimote autopair policy   a2dp avrcp
> network input hog  gap scanparam deviceinfo  battery > src/builtin.h
> | ../git/obexd/src/genbuiltin filesystem bluetooth  opp ftp irmc pbap mas
> mns > obexd/src/builtin.h
> | /bin/bash: obexd/src/builtin.h: No such file or directory
> | Makefile:9431: recipe for target 'obexd/src/builtin.h' failed
> | make: *** [obexd/src/builtin.h] Error 1
> | make: *** Waiting for unfinished jobs....
> | ERROR: oe_runmake failed
> | WARNING: exit code 1 from a shell command.
>
>
> It seems that for some reason in Yocto, make can't redirect into
> `obexd/src/builtin.h` while
> it does so successfully for native build.
>

Yocto will be doing an out-of-tree build with high parallelism, neither of
which you are likely doing yourself.

The hint is "no such file or directory" for a file it is writing *to*.
This means the parent doesn't exist, in this case obexd/src/.

This is a typical race in out-of-tree and parallel builds, where genbuiltin
is racing against other commands to create the directory.  The fix is to
ensure that whatever rule calls genbuiltin actually does a mkdir first.

We have a fix for this already in oe-core:

http://git.openembedded.org/openembedded-core/tree/meta/
recipes-connectivity/bluez5/bluez5/out-of-tree.patch

So I imagine you're using an old release of Yocto.  I sent this patch to
the linux-bluetooth list in April 2016 but it was either moderated away or
missed.

Ross

--001a113e9198ef36500567edc7c6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 21 March 2018 at 15:15, Alan Martinovic <span dir=3D"lt=
r">&lt;<a href=3D"mailto:alan.martinovic@senic.com" target=3D"_blank">alan.=
martinovic@senic.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><d=
iv class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;border-left=
-color:rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><br></div><=
div>Building it with Yocto results in the mentioned error:</div><div><br></=
div><div><div>| ../git/src/genbuiltin hostname wiimote autopair policy=C2=
=A0 =C2=A0a2dp avrcp network input hog=C2=A0 gap scanparam deviceinfo=C2=A0=
 battery &gt; src/builtin.h</div><div>| ../git/obexd/src/genbuiltin filesys=
tem bluetooth=C2=A0 opp ftp irmc pbap mas mns &gt; obexd/src/builtin.h</div=
><div>| /bin/bash: obexd/src/builtin.h: No such file or directory</div><div=
>| Makefile:9431: recipe for target &#39;obexd/src/builtin.h&#39; failed</d=
iv><div>| make: *** [obexd/src/builtin.h] Error 1</div><div>| make: *** Wai=
ting for unfinished jobs....</div><div>| ERROR: oe_runmake failed</div><div=
>| WARNING: exit code 1 from a shell command.</div></div><div><br></div><di=
v><br></div><div>It seems that for some reason in Yocto, make can&#39;t red=
irect into `obexd/src/builtin.h` while</div><div>it does so successfully fo=
r native build.</div></div></blockquote><div><br></div><div>Yocto will be d=
oing an out-of-tree build with high parallelism, neither of which you are l=
ikely doing yourself.</div><div><br></div><div>The hint is &quot;no such fi=
le or directory&quot; for a file it is writing *to*.=C2=A0 This means the p=
arent doesn&#39;t exist, in this case obexd/src/.</div><div><br></div><div>=
This is a typical race in out-of-tree and parallel builds, where genbuiltin=
 is racing against other commands to create the directory.=C2=A0 The fix is=
 to ensure that whatever rule calls genbuiltin actually does a mkdir first.=
</div><div><br></div><div>We have a fix for this already in oe-core:</div><=
div><br></div><div><a href=3D"http://git.openembedded.org/openembedded-core=
/tree/meta/recipes-connectivity/bluez5/bluez5/out-of-tree.patch" target=3D"=
_blank">http://git.openembedded.org/<wbr>openembedded-core/tree/meta/<wbr>r=
ecipes-connectivity/bluez5/<wbr>bluez5/out-of-tree.patch</a><br></div><div>=
<br></div><div>So I imagine you&#39;re using an old release of Yocto.=C2=A0=
 I sent this patch to the linux-bluetooth list=C2=A0<span style=3D"font-siz=
e:12.800000190734863px;text-align:right;white-space:nowrap">in April 2016 b=
ut it was either moderated away or missed.</span></div><div><span style=3D"=
font-size:12.800000190734863px;text-align:right;white-space:nowrap"><br></s=
pan></div><div><span style=3D"font-size:12.800000190734863px;text-align:rig=
ht;white-space:nowrap">Ross</span></div></div></div></div>

--001a113e9198ef36500567edc7c6--
