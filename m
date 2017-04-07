Return-Path: <maxpowel@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E77EDE00AD5; Fri,  7 Apr 2017 03:59:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (maxpowel[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.176 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.176 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f176.google.com (mail-qk0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CF92E009FD
	for <yocto@yoctoproject.org>; Fri,  7 Apr 2017 03:59:27 -0700 (PDT)
Received: by mail-qk0-f176.google.com with SMTP id h67so59645887qke.0
	for <yocto@yoctoproject.org>; Fri, 07 Apr 2017 03:59:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=7I7PPgGq8Rk4VF6QFxegWYWGXRkNFvRYIJBnGM1Bokc=;
	b=S0yXG3K2rjF3kWsb+djaDdJLvQqACSHmbwsgiYhR+UwQ6aRI9HCPNGK4fZYTjyHJD8
	RMlJb+RIS+DFjTQDJegRm4GhRmWaDumXW1TlmpTsHlHM49Grsmr8PGaR3YhgJ7k2vc+O
	TUITl88TeObLKkBpUnqHkipJTsw5z/aEUZYYyDspNtu0UI82l3G1OHBUc+pk4Ez0a7RR
	S594mcr7n5fLl6gJPUbdsPyE1/PZ9BNPkm+hLyr3ZNngiH5U5sNggr4c5Z4QGGt2bxG2
	vPTW8j7yyVfrd94He9IGRPp5FUKR7acdJX8/pwXyryCdmkQsGdZ5N2o3Qs6dvUO4E1lX
	uLAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=7I7PPgGq8Rk4VF6QFxegWYWGXRkNFvRYIJBnGM1Bokc=;
	b=iQ21QqmcevIt+LbISh2oOe4rFq+nkCZ2ZutE4ErqRjBfs6JLxxQvaRRoMRS1GecbKY
	eG7q2E0eieS6tTUaRQgo7fICGo7hs52GaV/Rmh5CLEr7GSEbysGs7vMRZqK5VqXRuLYS
	lQhtH5gwH8UdWm3FncnvZU2HDB2uD6ehubTf91E+U7/jLL9ERcyRqFYnj72fIs7s19Oj
	avgW24kM7AmPycRRPNuViaBvPNYyHZo8XYqSuCNvGhLjc2Gi/LbYSi8QbuT15P8MeV8M
	bf5W+7NlE87zI1g8pSqtoBOvSvDSd953adPWBOhKD7aAJSfY6kvZGQo1Se7Q3s28FL+o
	q3qw==
X-Gm-Message-State: AFeK/H06rm22GxmcJyEr5HAD3luguwdT4eVThFqy4fg86lEpXEcnMRUJ2ZOAE723ikN+n4hEahARwxzs7rUoBg==
X-Received: by 10.55.108.131 with SMTP id h125mr35759805qkc.199.1491562766412; 
	Fri, 07 Apr 2017 03:59:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.37.5 with HTTP; Fri, 7 Apr 2017 03:59:26 -0700 (PDT)
From: Alvaro Garcia <maxpowel@gmail.com>
Date: Fri, 7 Apr 2017 12:59:26 +0200
Message-ID: <CAOsmwBRkb8duSiy2eZ6N87_mSXbmKhqNS1pD-JL9ZtB4o9jkvA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Customize live grub entries
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
X-List-Received-Date: Fri, 07 Apr 2017 10:59:29 -0000
Content-Type: multipart/alternative; boundary=001a11487518da3f2c054c918450

--001a11487518da3f2c054c918450
Content-Type: text/plain; charset=UTF-8

Hi, I want an unattended installation (just boot from USB, install, and
remove USB). I am able to remove all questions during install but I cant
customize the grub entries of the live boot. By default is market the
option "boot" but I need the "install" option.

In the file poky/plain/meta/classes/grub-efi.bbclass I found that the
variable GRUB_CFG_LIVE = "${S}/grub_live.cfg" contains the file with this
configuration but I cannot find this file. Where the image is built (inside
tmp directory) this file exists. I tried to override the variables
"LABELS_LIVE" without success (if I remove the boot option, it also
disappears from the installation and cannot boot later).

Once the image is flashed to an USB memory, the file syslinux_live.cfg
exists in the boot partition and if I edit it it works as I want. But this
is the bad way, would be great if I can edit it inside yocto build process.

Anyone knows what recipe should override?

Thank you

--001a11487518da3f2c054c918450
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, I want an unattended installation (just boot from USB,=
 install, and remove USB). I am able to remove all questions during install=
 but I cant customize the grub entries of the live boot. By default is mark=
et the option &quot;boot&quot; but I need the &quot;install&quot; option.<b=
r><br>In the file poky/plain/meta/classes/grub-efi.bbclass I found that the=
 variable GRUB_CFG_LIVE =3D &quot;${S}/grub_live.cfg&quot; contains the fil=
e with this configuration but I cannot find this file. Where the image is b=
uilt (inside tmp directory) this file exists. I tried to override the varia=
bles &quot;LABELS_LIVE&quot; without success (if I remove the boot option, =
it also disappears from the installation and cannot boot later).<br><br>Onc=
e the image is flashed to an USB memory, the file syslinux_live.cfg exists =
in the boot partition and if I edit it it works as I want. But this is the =
bad way, would be great if I can edit it inside yocto build process.<br><br=
>Anyone knows what recipe should override?<br><br>Thank you<br></div>

--001a11487518da3f2c054c918450--
