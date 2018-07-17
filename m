Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74C26E01106; Tue, 17 Jul 2018 06:49:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f53.google.com (mail-pl0-f53.google.com
	[209.85.160.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9F8BE00B18
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2018 06:49:36 -0700 (PDT)
Received: by mail-pl0-f53.google.com with SMTP id 31-v6so495739plc.4
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2018 06:49:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=v2s+dh3SIqLY/OiSAMe4d2GgsqmnaTgBGbNOv427rQc=;
	b=FjWzWR4CRAmmhE4jjSc0MRoWX9HngdrgiS6nTGoIyfu96wPoNcXA6JVmh3A40X4XrP
	nJ7Ladafkuk58TXXysI4uCAJ4jMG+BQBUTVRE9YECvTc+0ePKPX0t1WQDpTnRA/sRyuz
	KDwA7vN0sgM+GpVDQTetWs+1Q+x5T7pBVDqDjTqXEDAiooYe/b9mS15iRffFWUa5SQYA
	Ox5qdJ4c7R6oiBhN8V/SC0pTJ488qGRn6bktlnlezx6mQJlyBdC4l/5/bJKSdnxD4Kqv
	VjfFJwOlhu8+8RNB50vGGjZJ9nNOku1xNvIKLNoJFddmHDQNss72K0GUkS8V9PdmcDFy
	2GEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=v2s+dh3SIqLY/OiSAMe4d2GgsqmnaTgBGbNOv427rQc=;
	b=oSPtKwGgoub3JaJLMXWvHiTO6Db82uC4f9gUxqQCam2vvUMpITGalwTjOE5PyehDuL
	e+JnBIqX4toOIy0D7l30kwsfvc/MNGO6QlSlReeljRqfO1DiPlT9ZMJmQhgSyM/0IrLG
	bvXF7oyXuiyh6P9VvZt01pGWIF7XnJSOy3rS2qO1DwNDyISLSF1MouYmrWLQnGqgNHMV
	YVome4+d+ijEMeCi28yEOgKPGw/DPSuf7Ts/0kgFPzKqtr718wZ+PHyg2u/gb50epeNS
	3yPXW89YPte11g5hunjBLGtEsMdk433C5wNY8h3Syh3vka7MpTk/k3P9LmFmZRvt76Ny
	6i0g==
X-Gm-Message-State: AOUpUlGS+bBdOYsuhHqi68kfEqdZO3ZtRJ0Ut2TrD4RZCxVuELVD3iNg
	FOlUykApxNQduGuDwgSEa+UPmnmFkKomkm7b0UK56Q==
X-Google-Smtp-Source: AAOMgpfKukZVKeba6GQNGmtLEQO+KlC5uGo9Wq/vaUuyhHuQoJ1nfPACwyUAG7vjohIn6yCxZfUdj7bCoafoP/Zsbig=
X-Received: by 2002:a17:902:c85:: with SMTP id
	5-v6mr1756451plt.126.1531835376407; 
	Tue, 17 Jul 2018 06:49:36 -0700 (PDT)
MIME-Version: 1.0
From: Michael Habibi <mikehabibi@gmail.com>
Date: Tue, 17 Jul 2018 08:49:25 -0500
Message-ID: <CAOsp8o-q--yqKh5A6aYXQca54iWdcDnfvByrBpmi5wE08TiY9w@mail.gmail.com>
To: Yocto <yocto@yoctoproject.org>
Subject: Capture download location and checksum?
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
X-List-Received-Date: Tue, 17 Jul 2018 13:49:37 -0000
Content-Type: multipart/alternative; boundary="00000000000077198d0571323738"

--00000000000077198d0571323738
Content-Type: text/plain; charset="UTF-8"

As part of auditing, I'd like for the build to capture the download
location. I am going to work on code that generates a license manifest that
also includes the download location and checksum as part of the
'recipeinfo' file.

Is this already saved off in a variable or other construct, or do I need to
implement code to save the location used to download the file?

--00000000000077198d0571323738
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">As part of auditing, I&#39;d like for the build to capture=
 the download location. I am going to work on code that generates a license=
 manifest that also includes the download location and checksum as part of =
the &#39;recipeinfo&#39; file.<div><br></div><div>Is this already saved off=
 in a variable or other construct, or do I need to implement code to save t=
he location used to download the file?</div></div>

--00000000000077198d0571323738--
