Return-Path: <emilmih@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8719E00DEC; Thu,  5 May 2016 10:43:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (emilmih[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f171.google.com (mail-pf0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A8D3E00C2B
	for <yocto@yoctoproject.org>; Thu,  5 May 2016 10:43:12 -0700 (PDT)
Received: by mail-pf0-f171.google.com with SMTP id 206so40216636pfu.0
	for <yocto@yoctoproject.org>; Thu, 05 May 2016 10:43:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=i+VlFnH1gxBxT4k7z59Uo1BASTo7szxxaSm04VP9JaU=;
	b=A5fIkzFiYUJU/cNH3hGGay/NwEMqrrNSXdFfSJOh8yRlW+XXiQJKwdrAASoeLoY56O
	Q0PRf93nlatQDW1pp/SZSLNSLW/66odg3rpqqBNgUtkX2AywGaYPZx2MzYbi3bAasaoF
	9K1spFj1wJ8wSngabvJ3x1KzL+HshhaxsUb+G55fBdMZojDTuVyDCwa/dM/XR9uJi7j8
	1ZPooXEDZQvBdBod0fXn7vY/tXqn4/b93VlX6/vVZQ0k53BolFMN+0gvL+QlK1Vw8uLE
	z213EXQN04PdGMdULlnotwnqAEASUdFKHmJLY8Yfw63B4DHy0ZMF2qAp1WEKu61KhSLO
	uBnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=i+VlFnH1gxBxT4k7z59Uo1BASTo7szxxaSm04VP9JaU=;
	b=OhKAyWvXvFZqVV+dfvckCyAehecD5JosnhIHsZSzvuoqizV6f34AowCpbmhOo7V+qL
	qyx6fEdNErJhYRADMAVAWBL3DphOk7bcd3kOun2gUPf7RKCx/JYEocvn259k7gaXU4jI
	c1QjGplpcB6TumRuJFTqB4NfL8MBX+rj4HDSaxrTGwueDncwPPq2Ejn4L8JonUZZVk7+
	LZ0MBlevVQABSFSv6P4jlJLvL8II5pJbQa2KI7pQkpUC9iQr10pV7VY/SXgfhmq4g0eQ
	dQwadrbowNGoY8xnShQf5vvLDovDcUICkpbjbtCj1E7ubHHpit3udAqduogCPDfFnGeb
	CDhg==
X-Gm-Message-State: AOPr4FWU4wutOavt578mkg24KyWPqA0n2LHB+eRa67WRfjBDGYoHZo2QZKHLm1gz1eB/GA==
X-Received: by 10.98.31.65 with SMTP id f62mr22436305pff.83.1462470191464;
	Thu, 05 May 2016 10:43:11 -0700 (PDT)
Received: from [10.8.100.105] (rrcs-74-62-253-130.west.biz.rr.com.
	[74.62.253.130]) by smtp.gmail.com with ESMTPSA id
	yl5sm15173670pac.38.2016.05.05.10.43.09
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 05 May 2016 10:43:09 -0700 (PDT)
To: Mark Hatle <mark.hatle@windriver.com>, yocto@yoctoproject.org
References: <ccfc2b5b-74fa-ed1e-37b6-6dc0ed7ecb27@gmail.com>
	<fb5c7b87-82bd-f1cd-9070-d99aa4046146@windriver.com>
From: "Mihaylov, Emil" <emilmih@gmail.com>
Message-ID: <e83997e2-d496-eaa7-0921-64ef4d669f36@gmail.com>
Date: Thu, 5 May 2016 10:43:08 -0700
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.0
MIME-Version: 1.0
In-Reply-To: <fb5c7b87-82bd-f1cd-9070-d99aa4046146@windriver.com>
Subject: Re: oracle-jse-jdk
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
X-List-Received-Date: Thu, 05 May 2016 17:43:15 -0000
Content-Type: multipart/alternative;
	boundary="------------37C29CC6DCC9C82ACF730290"

--------------37C29CC6DCC9C82ACF730290
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

hi Mark,

my oracle-jse-jdk_1.7.0.bb

looks like this

-----------------------------------------------

# Automatically choose java package based on target architecture
DEPENDS += "libav gtk+ libxslt libxtst"
def get_java_pkg(d):
        TA = d.getVar('TARGET_ARCH', True)
        if TA == "i586":
                javaPkg = "oracle-jse-jdk-i586"
        elif TA == "x86_64":
                javaPkg = "oracle-jse-jdk-x86-64"
        else:
                raise bb.parse.SkipPackage("The target architecture '%s' 
is not supported by the meta-oracle-java layer" %TA)

        return javaPkg

JAVA_PKG = "${@get_java_pkg(d)}"

require ${JAVA_PKG}.inc

-----------------------------------------

still error

thanks Emil



On 5/5/2016 10:11 AM, Mark Hatle wrote:
> DEPENDS' and the packages associated RDEPENDS.


--------------37C29CC6DCC9C82ACF730290
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>hi Mark,</p>
    <p>my oracle-jse-jdk_1.7.0.bb</p>
    <p>looks like this <br>
    </p>
    <p>-----------------------------------------------<br>
    </p>
    <p># Automatically choose java package based on target architecture<br>
      <font color="#ff0000">DEPENDS += "libav gtk+ libxslt libxtst"</font><br>
      def get_java_pkg(d):<br>
             TA = d.getVar('TARGET_ARCH', True)<br>
             if TA == "i586":<br>
                     javaPkg = "oracle-jse-jdk-i586"<br>
             elif TA == "x86_64":<br>
                     javaPkg = "oracle-jse-jdk-x86-64"<br>
             else:<br>
                     raise bb.parse.SkipPackage("The target architecture
      '%s' is not supported by the meta-oracle-java layer" %TA)<br>
             <br>
             return javaPkg<br>
      <br>
      JAVA_PKG = "${@get_java_pkg(d)}"<br>
      <br>
      require ${JAVA_PKG}.inc<br>
    </p>
    <p>-----------------------------------------</p>
    <p>still error <br>
    </p>
    <p>thanks Emil</p>
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 5/5/2016 10:11 AM, Mark Hatle wrote:<br>
    </div>
    <blockquote
      cite="mid:fb5c7b87-82bd-f1cd-9070-d99aa4046146@windriver.com"
      type="cite">
      <pre wrap="">DEPENDS' and the packages associated RDEPENDS.
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------37C29CC6DCC9C82ACF730290--
