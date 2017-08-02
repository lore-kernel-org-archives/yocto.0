Return-Path: <bachehkaraji@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76495E00C9E; Wed,  2 Aug 2017 02:47:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_MUA_MOZILLA, FREEMAIL_FROM,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bachehkaraji[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [66.163.191.148 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  2.3 FORGED_MUA_MOZILLA Forged mail pretending to be from Mozilla
Received: from sonic304-22.consmr.mail.ne1.yahoo.com
	(sonic304-22.consmr.mail.ne1.yahoo.com [66.163.191.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28F80E00C19
	for <yocto@yoctoproject.org>; Wed,  2 Aug 2017 02:47:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1501667262; bh=TgcufuiNBtvjBSe1lIqC76UoIWY7JV0MUkZs1vTL/ts=;
	h=Date:From:To:Subject:References:From:Subject;
	b=pJy/UbaApGwBknD+NEf7cNn9n84tJSfIkqintffQsnroo/bvet6g26MNZqN4+/xxniuV7oV6TyULASFQQkxQIX2aexB4O9r2UQg3fY2Yna4PbLOG1DeXlK8FYIdemwXJAznvSDai/4/ocUHTTfoPlskdaKoYxGzTdej0ylRJeIvSZDGbOFGIdnOCE458eu+6xuS9IZEMlj2EPNWN8VGcMKqVemNQ0sKnZmBtEq1JQOyimCVZ6LkK2FycOrWUHl5dKcj1wl2fM/moVlTgYzFpZ+En/H7vfC0Ejvgd9+TOMubB+v7ZqxaK/o7kjjmPgdSO5LyEKRfKJZm2D7C0y44L8g==
X-YMail-OSG: exDCCvIVM1l13gq9QpnX9mvGuGDo9881gwu0VC2G1TAQhXTq0i9RGG8myvW40FL
	zjsfaOdi3ozg9e2Gqpj_wS02kN3aw9sNkFz_UWotIcuJYzoKNZ4P47Eba_cWfO88T_ecdKIfzg5P
	Rj.9vwVhjTz6B9Pu0eviQaLU85A8mojWy8Ify9crJAldB.6diqbwqKjwTs1ujSXK0v8rSMPLbOJH
	2QsvFcO4jKS_bqCzEbAyBMM1PLeOhUut_25pHLfj4nSD8BhjG_myW6YB33pGaZmM5qt4.tk7OkQZ
	e02pXotvHfuvINd9Ld9eeoR3xmXfNty6ZwQBWR75t1QFaL0JERwhEduqVQqjWkOxrDXwSMsqyUDk
	wpRjZzaw4gfIeXw5TOgUlrf3WVRhLRyEoeb_5uOTiwWx6uGqEf9_aWCXAlWbHkd8kCj7BpGxQOYN
	SJsaaPERJJP6uW8QPxXtyUV5BBzhQml1hLk1kd6wixiPfrL6XmiBVGajAp01c76T06mV07HhVcQW
	0XLAnK3Sn558xX3qx0iJfqWcNpi1hArHv
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic304.consmr.mail.ne1.yahoo.com with HTTP;
	Wed, 2 Aug 2017 09:47:42 +0000
Date: Wed, 2 Aug 2017 09:47:15 +0000 (UTC)
From: Bacheh Karaji <bachehkaraji@yahoo.com>
To: Yocto Discussion List <yocto@yoctoproject.org>
Message-ID: <568398942.4073936.1501667235929@mail.yahoo.com>
MIME-Version: 1.0
References: <568398942.4073936.1501667235929.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.10181 YMailNorrin Mozilla/5.0 (Windows NT 6.1; Win64;
	x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115
	Safari/537.36
Subject: How to strip down my Yocto Linux?
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
X-List-Received-Date: Wed, 02 Aug 2017 09:47:44 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_4073935_1624521610.1501667235928"

------=_Part_4073935_1624521610.1501667235928
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


I would like to strip down my Yocto Linux before put in it to flash. Unneeded software, man pages, POCO sample codes and other documentation just waste resource, especially on the i.MX28 EVK with only 128MB flash.

My local.conf file looks following:

$ gedit conf/local.conf &
...
IMAGE_INSTALL_append = " poco nginx canutils vsftpd curl fcgi spawn-fcgi net-snmp util-linux ubiattach-klibc ubimkvol-klibc ubiformat-klibc minicom net-tools zeroconf avahi-autoipd mtd-utils u-boot-fw-utils ethtool"
...
I bitbake the image "core-image-base".

I was wondering, is there a way that I can delete all of the Unneeded files?

Can somebody help me howto strip down my Yocto Linux?


------=_Part_4073935_1624521610.1501667235928
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:x-small;"><p style="margin: 0px 0px 1em; padding: 0px; border: 0px; font-stretch: inherit; line-height: inherit; vertical-align: baseline; clear: both; color: rgb(36, 39, 41);"><span style="font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 15px;">I would like to strip down my Yocto Linux before put in it to flash. Unneeded software, man pages, POCO sample codes and other documentation just waste resource, especially on the i.MX28 EVK with only 128MB flash.
</span><br>
<br><span style="font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 15px;">My local.conf file looks following:
</span><br>
<br><font face="courier new, courier, monaco, monospace, sans-serif" size="2"><i>$ gedit conf/local.conf &amp;
<br>...
<br>IMAGE_INSTALL_append = " poco nginx canutils vsftpd curl fcgi spawn-fcgi net-snmp util-linux ubiattach-klibc ubimkvol-klibc ubiformat-klibc minicom net-tools zeroconf avahi-autoipd mtd-utils u-boot-fw-utils ethtool"
<br>...
<br>I bitbake the image "core-image-base"</i>.
</font><br>
<br><span style="font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 15px;">I was wondering, is there a way that I can delete all of the Unneeded files?
</span><br>
<br><span style="font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 15px;">Can somebody help me howto strip down my Yocto Linux?</span><br></p><!--EndFragment--></div></body></html>

------=_Part_4073935_1624521610.1501667235928--
