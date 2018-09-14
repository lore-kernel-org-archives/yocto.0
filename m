Return-Path: <seth.boll@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 501DFE0097C; Fri, 14 Sep 2018 05:39:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (seth.boll[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f169.google.com (mail-qt0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4142FE006AF
	for <yocto@yoctoproject.org>; Fri, 14 Sep 2018 05:39:01 -0700 (PDT)
Received: by mail-qt0-f169.google.com with SMTP id h4-v6so8515583qtj.7
	for <yocto@yoctoproject.org>; Fri, 14 Sep 2018 05:39:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=EoAZkx1U46NR9tEH12X8qgjzh1jMnZH1ieFKZQtXxTE=;
	b=q6n0e6K8UYoApLzkop+KwJw7sPtyUztY7EkT6YzBE7lEuT3ZGD9noAMYexhiFkPGCc
	lfI5zFcO2E3ek4In8hWdtU7kSD/eye//2InLHf9wmEddsClySZtAxnZNxofDMQ8dn+mO
	9rh7UMdmpYgHqLske6juL27QR/hEfdCac/1xBlqbuodqcVI0HGCueDj2ghJ7/iaFzI9Z
	c6uxt730Bl+MO4qj/Mg9epUrR8QHnjeCE86jR0RUF0233Ta6FOpxJPd+KGSnXjXMYnDr
	KOg+uaIJuzT7v+lvtmVsA42D8MA8Ng6loswzuwPP/Cg0pde6iBo81PdI7qAx3sI5Jx1K
	ghjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=EoAZkx1U46NR9tEH12X8qgjzh1jMnZH1ieFKZQtXxTE=;
	b=TK8i3WMTwVV4Qo3uTcJowIZxNav6OUO7LZEXXeiFoRvSTdaJ+wu+RcquIZHWBk5gkf
	TgtospH8Lbqsj/hN1PeAs5eyxQVV8M0lEOsP314ZwcKlrbqJS6E1IjgjyFKV/cn6Rx7s
	Wee89pIigtM4R3nRqtynryyPX73XMc2Xk4Xvn8an8ZbLU6GPeCHN8o1d5QE9D4qB9Kv5
	BQCxMfEsIlKoXeXtpGMW1DtGDdEn0Sa3kfxNQtThKPMYWn1kXXvbkhAwqYA/Yf4VtOA9
	3Ai0vwms0svvOngLcJ75vc/bVf2/3nYrKbsijRwOi3npTX6xR8OqQMcnlyZeDA42UjjF
	xG5w==
X-Gm-Message-State: APzg51DhOaveXr6wM2bykM+C66zlAteOyLXVcLEeDpH0G5stbjQ56GNW
	EPJLl+oScepleXdR2IJ9S2nPBx8xsfo8TFHuHgCsDvNN
X-Google-Smtp-Source: ANB0VdbtPslP+Sl3S78gJYcMMBgPpkbmlmsoYzyim2Hi7q+hok6pz6NUA/vgwncTdx3rfpNKdgSGXgVvi0PSpfwDZEs=
X-Received: by 2002:a0c:ad3a:: with SMTP id
	u55-v6mr8623030qvc.132.1536928740442; 
	Fri, 14 Sep 2018 05:39:00 -0700 (PDT)
MIME-Version: 1.0
References: <CA+JN8xO0_DYoR3Bt9qVaZFHQRwnyd=fskuMy+YYrX3yTrAiZVQ@mail.gmail.com>
In-Reply-To: <CA+JN8xO0_DYoR3Bt9qVaZFHQRwnyd=fskuMy+YYrX3yTrAiZVQ@mail.gmail.com>
From: Seth Bollinger <seth.boll@gmail.com>
Date: Fri, 14 Sep 2018 07:38:49 -0500
Message-ID: <CA+JN8xO6UDubtnF_yCuK4sHCji1EnsZLK=XcyUz07Ow6rY2PrQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: coreutils postinstall warning
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
X-List-Received-Date: Fri, 14 Sep 2018 12:39:02 -0000
Content-Type: multipart/alternative; boundary="0000000000009e88860575d41b11"

--0000000000009e88860575d41b11
Content-Type: text/plain; charset="UTF-8"

On Mon, Aug 20, 2018 at 8:16 AM Seth Bollinger <seth.boll@gmail.com> wrote:

> Hello All,
>
> We've been seeing the following warning for a while now.  Is this expected?
>
> WARNING: manuf-image-1.0-r0 do_rootfs: Intentionally failing postinstall
> scriptlets of ['coreutils'] to defer them to first boot is deprecated.
> Please place them into pkg_postinst_ontarget_${PN} ().
>
> From what I can see, it's being caused by update-alternatives.  Is there a
> workaround for this?
>

I'll answer my own question since it may be of value to someone else.

coreutils, util-linux and busybox all provide overlapping utilities.  Most
are covered by update alternatives, some are not.  If you have enabled one
of those in busybox, then update alternatives will fail trying to make the
symbolic link.  As I understand it (from the warning message) is that
failing the postinst step used to be a way to ask to be executed at target
runtime.  The solution is to have only one package provide the conflicting
utility (or add alternatives to all packages that provide the utility).

Here's an example error message:
update-alternatives: Error: not linking
/home/seth/projects/awusb/build/tmp/work/awusb1012-awusb-linux/awusb-image/1.0-r0/rootfs/usr/bin/unshare
to /bin/busybox.nosuid since
/home/seth/projects/awusb/build/tmp/work/awusb1012-awusb-linux/awusb-image/1.0-r0/rootfs/usr/bin/unshare
exists and is not a link

Seth

--0000000000009e88860575d41b11
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br><div class=3D"gmail_quote"><div dir=
=3D"ltr">On Mon, Aug 20, 2018 at 8:16 AM Seth Bollinger &lt;<a href=3D"mail=
to:seth.boll@gmail.com">seth.boll@gmail.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello All,=
</div><div><br></div><div>We&#39;ve been seeing the following warning for a=
 while now.=C2=A0 Is this expected?</div><div><br></div><div>WARNING: manuf=
-image-1.0-r0 do_rootfs: Intentionally failing postinstall scriptlets of [&=
#39;coreutils&#39;] to defer them to first boot is deprecated. Please place=
 them into pkg_postinst_ontarget_${PN} ().</div><div><br></div><div>From wh=
at I can see, it&#39;s being caused by update-alternatives.=C2=A0 Is there =
a workaround for this?</div></div></blockquote><div><br></div><div>I&#39;ll=
 answer my own question since it may be of value to someone else.</div><div=
><br></div><div>coreutils, util-linux and busybox all provide overlapping u=
tilities.=C2=A0 Most are covered by update alternatives, some are not.=C2=
=A0 If you have enabled one of those in busybox, then update alternatives w=
ill fail trying to make the symbolic link.=C2=A0 As I understand it (from t=
he warning message) is that failing the postinst step used to be a way to a=
sk to be executed at target runtime.=C2=A0 The solution is to have only one=
 package provide the conflicting utility (or add alternatives to all packag=
es that provide the utility).</div><div><br></div><div>Here&#39;s an exampl=
e error message:</div><div>update-alternatives: Error: not linking /home/se=
th/projects/awusb/build/tmp/work/awusb1012-awusb-linux/awusb-image/1.0-r0/r=
ootfs/usr/bin/unshare to /bin/busybox.nosuid since /home/seth/projects/awus=
b/build/tmp/work/awusb1012-awusb-linux/awusb-image/1.0-r0/rootfs/usr/bin/un=
share exists and is not a link</div><div><br></div><div>Seth<br></div></div=
></div></div>

--0000000000009e88860575d41b11--
