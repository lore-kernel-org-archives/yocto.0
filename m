Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0AA93E00D9E; Thu, 10 Oct 2019 01:27:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [62.149.158.131 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd04131.aruba.it (smtpcmd04131.aruba.it [62.149.158.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCFB9E003E1
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2019 01:27:09 -0700 (PDT)
Received: from [10.0.3.85] ([213.213.6.58])
	by smtpcmd04.ad.aruba.it with bizsmtp
	id BkT72101V1F741R01kT7TU; Thu, 10 Oct 2019 10:27:08 +0200
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <8d8b0186-6319-2967-2d62-bbfea38952be@faresoftware.it>
Date: Thu, 10 Oct 2019 10:27:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1570696028; bh=1vH9HAW/Bk9Zi26wgS1ipwEPThZvbPTG+qMLWfMEidg=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=BNTWkZ1Fl1yebe5VGuavVu1jsSatPk1OMi5nqW5TLdgBXgcAuZmGFFEGr90WMITi5
	Ze/XThVFK2vcTRKsmnSrLdCqTQUkB6kl3IiHdMRpFrapzSj/OoSBAWqcIHqcZQ9nea
	fGObVa6ooi7FQoA5m1oJWLmZNoWHETNkXL3Fd4k4HYzFCcdJWjBnS1MeNDTYbEHMYY
	lXeS4IBwqrJr4jfUGBQnCpG0MSJZ7exnnOK9+XQ4gcEKkLepPjaWipPV9H02pCLtQH
	DX5dw89Gp9LgtcuVbUIVLrKHk6ux3dof71i7ACGSbCN3JSykV5Rqebt2JnQZc2IJ8Z
	lgmLLw5yTRrtQ==
Subject: buildhistory revert
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
X-List-Received-Date: Thu, 10 Oct 2019 08:27:12 -0000
Content-Type: multipart/alternative;
	boundary="------------842AB8DE5C22DF8A9196ADBA"
Content-Language: it

--------------842AB8DE5C22DF8A9196ADBA
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 7bit

Hi all

I need to change the build number of a package.

That is: i have the package 
kernel-4.1.15-2.0.1_4.1.15-r0.*17*_armhf.deb, but in need to turn back 
to kernel-4.1.15-2.0.1_4.1.15-r0.*13*_armhf.deb


Can I setup manually the 17 value to 13?


Mauro


--------------842AB8DE5C22DF8A9196ADBA
Content-Type: text/html; charset=iso-8859-15
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-15">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><font size="-1">Hi all</font></p>
    <p><font size="-1">I need to change the build number of a package.</font></p>
    <p><font size="-1">That is: i have the package
        kernel-4.1.15-2.0.1_4.1.15-r0.<b>17</b>_armhf.deb, but in need
        to turn back to </font><font size="-1">kernel-4.1.15-2.0.1_4.1.15-r0.<b>13</b>_armhf.deb</font></p>
    <p><font size="-1"><br>
      </font></p>
    <p><font size="-1">Can I setup manually the 17 value to 13?</font></p>
    <p><font size="-1"><br>
      </font></p>
    <p><font size="-1">Mauro<br>
      </font></p>
  </body>
</html>

--------------842AB8DE5C22DF8A9196ADBA--
