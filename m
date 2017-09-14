Return-Path: <sabrin.fatnassi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78153E00CC6; Thu, 14 Sep 2017 06:35:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sabrin.fatnassi[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.176 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8000BE00C78
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 06:35:09 -0700 (PDT)
Received: by mail-io0-f176.google.com with SMTP id n69so425639ioi.5
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 06:35:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=/WCpkpzQ2o7jqDTlUzywge4tjyx8aPrHeVPd1Uvnd+k=;
	b=N/wBLjqluFyDLSeTMKsPeo7FzBVHUJyVCgawvupFtaCzx1+1hcI+PDAbFA6xdujLv3
	NJcg1R5zyyJvnScBbLUBS4BS2Pmz/w3Xf7ixhjf5S8wK5g5H/PERB5/FU0AB2QDIHZ8O
	05iFPscOaE5qkrSW97qcsNskhKE5mqbaXVYPyfMUuymmp6OQ2hobL6A+jM82E3TQ0g/a
	dTl0z1Xhue0YiZirXNHO6JyhxU1wREBpy5XPRwRj+++XV6Ze6TEqkGr4HBqjqBshRNQw
	ltZ+c/Y49tqzFEgmeTVYPjvRD6TFd0xoeZI2Z/HdA2b5g6gM98b2yarTfz0wYYg1OW4/
	Cz2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=/WCpkpzQ2o7jqDTlUzywge4tjyx8aPrHeVPd1Uvnd+k=;
	b=NOiasih1QnYmdyUUekIG34hJy3HRGC6XEc1mFHTDLtWcFEfiYTrpLYs7gXI+S4ZY5a
	T8Pq8sxTU+YcTdkAwSHiby2ze+QETToqZqgjs8lYiu1rR+BnAT1akeGduvDx+QifARKZ
	sXXp1m082v75n13UESF3TkKZ+MTcTsCNKj6/ZUTplCzFs27ocIuPHEJKbc1u8XKk6FsK
	G9d89hjYD4TfjvLLaeGgIkGKwDZl/TtpkTxKdn2cUIbclfmWVBEwOkzf0sCbffnGGJA2
	Bwz+e2zDMcvOvtZFE3iCfix13W/J0bRzpBqgrjxjPfVTCqlmEhjoKeBVOMCW+W2tslWQ
	3C7A==
X-Gm-Message-State: AHPjjUj2UnbijwTEYQCTOWo/3Nx9+m/klnupA3v9I4Q2ryKfiKwszr8o
	5U0OSjw7FaGFsfHSXH0Gp6v2dThlev/va9N4JMw=
X-Google-Smtp-Source: AOwi7QCAFihCqrH45oObd6JA60R2hXMjjGySmDTY1pXk8/uXSjUXcPprEvnVF3Qa6K6gloC2zsmXDTx/VIib9c6Hqqg=
X-Received: by 10.202.230.195 with SMTP id d186mr18681193oih.247.1505396108544;
	Thu, 14 Sep 2017 06:35:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.40.84 with HTTP; Thu, 14 Sep 2017 06:35:07 -0700 (PDT)
From: Sabrine Fatnassi <sabrin.fatnassi@gmail.com>
Date: Thu, 14 Sep 2017 15:35:07 +0200
Message-ID: <CAKKm51LBghRL9dVyns4vfg+TM+oPcWXEgX9GjWVpGV0jW1awGQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Customise file system
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
X-List-Received-Date: Thu, 14 Sep 2017 13:35:10 -0000
Content-Type: multipart/alternative; boundary="001a1141a7c04bd69905592658bc"

--001a1141a7c04bd69905592658bc
Content-Type: text/plain; charset="UTF-8"

Hello,
My kerlink gateway OS was built using Yocto.
It has a Root Read only file system.

I need to update the opkg configuration files available under "/etc/opkg"
So I created a directory under /user/rootfs_rw/etc named opkg and I created
a new configuration file opkg.conf containing my custom config.

But seems like opkg is not taken into consideration my customized file and
it is always using the configuration file under /etc/opkg

what have I missed?
Thanks!

--001a1141a7c04bd69905592658bc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div>My kerlink gateway OS was built using Yocto.</d=
iv><div>It has a Root Read only file system.</div><div><br></div><div>I nee=
d to update the opkg configuration files available under &quot;/etc/opkg&qu=
ot;</div><div>So I created a directory under /user/rootfs_rw/etc named opkg=
 and I created a new configuration file opkg.conf containing my custom conf=
ig.</div><div><br></div><div>But seems like opkg is not taken into consider=
ation my customized file and it is always using the configuration file unde=
r /etc/opkg</div><div><br></div><div>what have I missed?=C2=A0</div><div>Th=
anks!</div><div><br></div><div><br></div><div><br></div></div>

--001a1141a7c04bd69905592658bc--
