Return-Path: <navani.srivastava@gmail.com>
Received: from mail-oa0-f68.google.com (mail-oa0-f68.google.com
	[209.85.219.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30D41E01576
	for <yocto@yoctoproject.org>; Mon,  5 Aug 2013 21:55:04 -0700 (PDT)
Received: by mail-oa0-f68.google.com with SMTP id j6so3054316oag.3
	for <yocto@yoctoproject.org>; Mon, 05 Aug 2013 21:55:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:cc:content-type;
	bh=3wUG5J8K6g5J4u7E1Xzafn/CFbTepftiXdvrOrvvbO4=;
	b=KDL6RXowFvnhwD3c26f/KWyyuGc26C6K70AmfBsnY+pZi01nGwQx9ZxSWajiHTabiP
	D2D65sE+W5lBfeCd3g4KUwcm7YD3Y+4Eci+dWUzLzEGwLxK/qH+o4ZA3a7MXJvKQPYeC
	PD23G+OOUDoLQK0iZDLdxcPooo8zKuhf1f/t32cAg6T8zo86ocLTo2tbfVxzVDQgAgER
	Sc5idHjCsQlr+cfgrpWT5GdN9PFAJQsBA6fBeT8z+CAKqJo3TvhfYfmx/55xj5L4lZuM
	LKdzVFQvl+cg4u0+8DdCEwHNNopmrDnCtEJMyKWIqx/jUm4iy5GpYRdNAkNpoGFQXnSc
	4S+Q==
X-Received: by 10.60.150.241 with SMTP id ul17mr16921912oeb.69.1375764527988; 
	Mon, 05 Aug 2013 21:48:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.227.138 with HTTP; Mon, 5 Aug 2013 21:48:27 -0700 (PDT)
From: Navani Srivastava <navani.srivastava@gmail.com>
Date: Tue, 6 Aug 2013 10:18:27 +0530
Message-ID: <CA+Z6RkW8+sjJYW3sB4Pgwv6nW_QRHhshkDaXAKu6SwKy1DwThw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: "navani.srivastava@lnties.com" <navani.srivastava@lnties.com>
Subject: Access ssh repository
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
X-List-Received-Date: Tue, 06 Aug 2013 04:55:07 -0000
Content-Type: multipart/alternative; boundary=047d7b5d4fa0fc483404e3402370

--047d7b5d4fa0fc483404e3402370
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am using Poky danny for development.I have a query related to repository
fetching.
Is it possible to fetch any repository using ssh? As an example, suppose if
recipe contains something like-

SRC_URI="ssh://__________.git "

When I tried accessing it in the this manner encountered following error-

ERROR: ExpansionError during parsing
/home/user/poky/meta/recipes-core/initscripts/initscripts_1.0.bb: Failure
expanding expression ${@bb.fetch.get_checksum_file_list(d)} which triggered
exception NoMethodError: Could not find a fetcher which supports the URL:
'ssh://___.git'
ERROR: Command execution failed: Exited with 1


Thanks
Navani

--047d7b5d4fa0fc483404e3402370
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi,<br><br></div>I am using Poky danny=
 for development.I have a query related to repository fetching.<br>Is it po=
ssible to fetch any repository using ssh? As an example, suppose if recipe =
contains something like-<br>

</div><br>SRC_URI=3D&quot;ssh://__________.git &quot;<br><br></div><div>Whe=
n I tried accessing it in the this manner encountered following error-<br><=
/div><div><br>ERROR: ExpansionError during parsing /home/user/poky/meta/rec=
ipes-core/initscripts/<a href=3D"http://initscripts_1.0.bb">initscripts_1.0=
.bb</a>: Failure expanding expression ${@bb.fetch.get_checksum_file_list(d)=
} which triggered exception NoMethodError: Could not find a fetcher which s=
upports the URL: &#39;ssh://___.git&#39;<br>

ERROR: Command execution failed: Exited with 1<br><br><br></div>Thanks<br><=
/div>Navani<br></div>

--047d7b5d4fa0fc483404e3402370--
