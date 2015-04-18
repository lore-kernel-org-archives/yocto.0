Return-Path: <ashcharles@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0CAADE008DC; Fri, 17 Apr 2015 17:40:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ashcharles[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73871E0085D
	for <yocto@yoctoproject.org>; Fri, 17 Apr 2015 17:40:05 -0700 (PDT)
Received: by igblo3 with SMTP id lo3so25205263igb.0
	for <yocto@yoctoproject.org>; Fri, 17 Apr 2015 17:40:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-type; bh=8TcgKlGQCI1LpnvkrCXMW+C2mL4heGebLB7oDcTcX28=;
	b=nxhadGZ5hxGeOff96xPSViZ+HZxTOidf2otRa1k6lNEod2+7BY/ws2c4qLisNTAvMx
	eN5FiC34OB7M2xDTUGE0SOeuzT3bPCwaoBMA9b/PAcQAH98eyDXEn+TU+9OSnBg041vy
	6gsNFCRbXQiOSyKIS2GMWupdvx8ijplw/UmOLM7oEIZMtM2bh1rxs72dW4/VkXVuyvP+
	rMQOkpDWgF8nNGGOog5ClONRg8dPOvUJ0tJja0rHP+ahorNnexMc4a2lwe9AP8o4Seil
	qAhJK62cjpdYlzhCJgzxkPM39SiCAyg19VLJRcxhyX0da30ADegYfNmA8at4NGy5OEYy
	PtrA==
X-Received: by 10.43.163.129 with SMTP id mo1mr6375457icc.61.1429317604475;
	Fri, 17 Apr 2015 17:40:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.138.144 with HTTP; Fri, 17 Apr 2015 17:39:33 -0700 (PDT)
In-Reply-To: <CAK8F28niLBdUNbev27+TGL3CmpmzksR5QLNmQ2OieNZQf85t=A@mail.gmail.com>
References: <CAK8F28niLBdUNbev27+TGL3CmpmzksR5QLNmQ2OieNZQf85t=A@mail.gmail.com>
From: Ash Charles <ashcharles@gmail.com>
Date: Fri, 17 Apr 2015 17:39:33 -0700
Message-ID: <CAK8F28muypEuJLUnS1UjnpaZLmRYd6N00ou6bKmN6sJC+N+9-Q@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Using the yocto version of createrepo (want the MISSINGOK flag)
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
X-List-Received-Date: Sat, 18 Apr 2015 00:40:07 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Apr 17, 2015 at 2:43 PM, Ash Charles <ashcharles@gmail.com> wrote:
> 2. BBCLASSEXTEND nativesdk for createrepo and add it to the
> buildtools-tarball.bb recipe.  This feels like the best option.  But
> the python environment doesn't get picked up properly...e.g.
> Traceback (most recent call last):
>   File "/opt/poky/1.7.1/sysroots/x86_64-pokysdk-linux/usr/share/createrepo/genpkgmetadata.py",
> line 26, in <module>
>     import rpm
> ImportError: No module named rpm

Option 2 seems to be working nicely.  I just needed to add a few extra
packages too:
    nativesdk-createrepo \
    nativesdk-python-rpm \
    nativesdk-python-smartpm \
    nativesdk-libxml2-python \

--Ash

