Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FD94E00E04; Thu, 21 Nov 2019 08:31:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [62.149.156.146 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd13146.aruba.it (smtpcmd13146.aruba.it [62.149.156.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49413E00BA1
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2019 08:31:38 -0800 (PST)
Received: from [172.16.1.2] ([93.38.119.136])
	by smtpcmd13.ad.aruba.it with bizsmtp
	id UgXc2101M2wfazh01gXdrm; Thu, 21 Nov 2019 17:31:37 +0100
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <d588db5e-aec1-d40a-c503-ee0735b334ea@faresoftware.it>
Date: Thu, 21 Nov 2019 17:31:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.1
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1574353897; bh=pdUCpS/1NRaRHSv/FoYh4rflxdvwGAskYC55ZXBZ/do=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=KmCDNmhbTh6UhQzJxVMmCgqAMP77JuIIr9izaqI+tdosNKWHMHQUzDS9VihwHza0L
	/KO+Hhkb4cxFzfhRp3Bfgjrfb3K4Z5TsD/r3RwfWzP0yuGM/VhbWEOXOHobEolPxrk
	x7u5nKiGlAjOeRLKUQ6EIC9bbHPcxZ97znGQjgl/HTVac+HJ7Uk/jTQOeyAd0PJryJ
	XkTSxfAApSVNzjFyDgm/w1NiDN6bhSJ+ExV517PGQQHOIOfC5aSMqnKtIV/veDsAcA
	3o/16PsTR4qn1nUtbtkGh9/WlbRmc88NqiT1QfLqNR2Z29KyWwM72rihM0/iP1D3hJ
	FZ/mKWAWGSXFQ==
Subject: populate_sdk with my image
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
X-List-Received-Date: Thu, 21 Nov 2019 16:31:42 -0000
Content-Type: multipart/alternative;
	boundary="------------439DF5DA57C10DCDFD59B86D"
Content-Language: it

--------------439DF5DA57C10DCDFD59B86D
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 7bit

Hi all.

I have a recipe for my image with depends from Qt/Qml recipes

When I do

bitbake -c populate_sdk myimage.bb


the sdk doesn't contains the dev version of the Qt/Qml libraries 
installed in the final image


I managing the bitbake variables TOOLCHAIN_TARGET_TASK and 
TOOLCHAIN_HOST_TASK adding manually the dependecies.


There is an automatic way to do that?


M


--------------439DF5DA57C10DCDFD59B86D
Content-Type: text/html; charset=iso-8859-15
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-15">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><font size="-1">Hi all.</font></p>
    <p><font size="-1">I have a recipe for my image with depends from
        Qt/Qml recipes</font></p>
    <p><font size="-1">When I do</font></p>
    <p><font size="-1">bitbake -c populate_sdk myimage.bb</font></p>
    <p><br>
    </p>
    <p><font size="-1">the sdk doesn't contains the dev version of the
        Qt/Qml libraries installed in the final image</font></p>
    <p><font size="-1"><br>
      </font></p>
    <p><font size="-1">I managing the bitbake variables 
        TOOLCHAIN_TARGET_TASK and TOOLCHAIN_HOST_TASK adding manually
        the dependecies.</font></p>
    <p><font size="-1"><br>
      </font></p>
    <p><font size="-1">There is an automatic way to do that?</font></p>
    <p><font size="-1"><br>
      </font></p>
    <p><font size="-1">M<br>
      </font></p>
  </body>
</html>

--------------439DF5DA57C10DCDFD59B86D--
