Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14EC5E00C44; Thu,  3 Aug 2017 20:40:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f179.google.com (mail-pf0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7815FE00C2A
	for <yocto@yoctoproject.org>; Thu,  3 Aug 2017 20:40:34 -0700 (PDT)
Received: by mail-pf0-f179.google.com with SMTP id o86so2750664pfj.1
	for <yocto@yoctoproject.org>; Thu, 03 Aug 2017 20:40:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language;
	bh=fOstc1Ul5Esb7lg2aGuXHOk9U6CddZXg3yeG94pFxCc=;
	b=UY4Ju07QCq3mkOji6jM8wlcdgJN8pMaRE4Wh0tIOWqGe/d5Q/DViWnsGwf4eRCIwvc
	bAzQwDhycQ8FO4z4egvMW4TeqGBO7KyrCWRJBV2WcA/MidaYB/2Wp6C6Bp0Zsj8JFBiU
	GPT/DR5J+67XOVlx1mG03DDfrfdD0VRXsZ1Yany9ZDPPH4iSUXvlcbFtJdX3vJupv5f6
	CYdqRQJIp5i+9iJEEPqUE00tb05LnuXDY+161WYSjZyoHgSa4Q0isSlCmbPlNPuG4WO5
	MvrwV2FAFforxedPvQG3bDhGEofbECcTeOKJxsPebeP+WqQk4f3qA3MjcnzWTysfF4lW
	lLNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language;
	bh=fOstc1Ul5Esb7lg2aGuXHOk9U6CddZXg3yeG94pFxCc=;
	b=Wo8jihFvTqt9ii7y7pBsiyycrmRW2aJ4iemLQHAmEcx6soXGuDXPlcCMTz+rJi0rMI
	fA70wUeQRfu62NaXaPdZC1CcfGV5V7ZhUWV0JwPd6TQeogNAAj1Hfa2HClwxWTwFMZEN
	bvsfsKp+ubyuMHIsCDhrXJHcvjL5iFtDmD8X+wtFlxUb0y3GYZyjeAZUpsRU5gO4Q7DJ
	6yWKdBVAOFqhJMWi59Z+N54CmywKbjUl8KKYdWEI8yBdr0YCuOVVEGdWj2KsF6Fh+dy8
	M+AK4crkcpG3NwnNv0sYR8h9/JGQ+Mw2UoJ2TiLeMst7DbYBu0muKSx6nsWHy4W5ARuP
	iZXw==
X-Gm-Message-State: AIVw112FKaL1HImd/3v3ccmx8QDzjsPSfouaeElXsWTvG29rOSptoVHZ
	hSp6hhPUFXiGtxxN
X-Received: by 10.84.214.137 with SMTP id j9mr1044269pli.457.1501818033583;
	Thu, 03 Aug 2017 20:40:33 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:e1c4:1324:df00:9cbb?
	([2001:8003:804a:b500:e1c4:1324:df00:9cbb])
	by smtp.gmail.com with ESMTPSA id r8sm596542pfl.34.2017.08.03.20.40.31
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 03 Aug 2017 20:40:33 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <45a1f03e-778a-f6f8-7170-9a2e7f22cf11@gmail.com>
Date: Fri, 4 Aug 2017 11:40:29 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
Subject: meta-kodi questions ?
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
X-List-Received-Date: Fri, 04 Aug 2017 03:40:35 -0000
Content-Type: multipart/alternative;
	boundary="------------E1D05F67D9D87D03570E78FE"
Content-Language: en-US

--------------E1D05F67D9D87D03570E78FE
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear Yocto Team Member,

I want to build my image with meta-kodi for beagle but I got this issue :

======

ERROR: libffi-native-3.2.1-r0 do_configure: Function failed: 
do_configure (log file is located at 
/home/bianchi77/poky/build/tmp/work/x86_64-linux/libffi-native/3.2.1-r0/temp/log.do_configure.15177)
ERROR: Logfile of failure stored in: 
/home/bianchi77/poky/build/tmp/work/x86_64-linux/libffi-native/3.2.1-r0/temp/log.do_configure.15177
Log data follows:
| DEBUG: Executing shell function autotools_preconfigure
| DEBUG: Shell function autotools_preconfigure finished
| DEBUG: Executing python function autotools_aclocals
| DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc', 
'bit-64', 'x86_64-linux', 'common']
| DEBUG: Python function autotools_aclocals finished
| DEBUG: Executing shell function do_configure
| Unescaped left brace in regex is illegal here in regex; marked by <-- 
HERE in m/\${ <-- HERE ([^ \t=:+{}]+)}/ at 
/home/bianchi77/poky/build/tmp/work/x86_64-linux/libffi-native/3.2.1-r0/recipe-sysroot-native/usr/bin/automake 
line 3940.
| Unescaped left brace in regex is illegal here in regex; marked by <-- 
HERE in m/\${ <-- HERE ([^ \t=:+{}]+)}/ at 
/home/bianchi77/poky/build/tmp/work/x86_64-linux/libffi-native/3.2.1-r0/recipe-sysroot-native/usr/bin/automake 
line 3940.
| WARNING: exit code 255 from a shell command.

=====

Does anyone know any ideas about it ?

Thanks,

-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
Kind regards,
Riko Ho
/*******/

*

--------------E1D05F67D9D87D03570E78FE
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Dear Yocto Team Member,</p>
    <p>I want to build my image with meta-kodi for beagle but I got this
      issue :</p>
    <p>======</p>
    <p>ERROR: libffi-native-3.2.1-r0 do_configure: Function failed:
      do_configure (log file is located at
/home/bianchi77/poky/build/tmp/work/x86_64-linux/libffi-native/3.2.1-r0/temp/log.do_configure.15177)<br>
      ERROR: Logfile of failure stored in:
/home/bianchi77/poky/build/tmp/work/x86_64-linux/libffi-native/3.2.1-r0/temp/log.do_configure.15177<br>
      Log data follows:<br>
      | DEBUG: Executing shell function autotools_preconfigure<br>
      | DEBUG: Shell function autotools_preconfigure finished<br>
      | DEBUG: Executing python function autotools_aclocals<br>
      | DEBUG: SITE files ['endian-little', 'common-linux',
      'common-glibc', 'bit-64', 'x86_64-linux', 'common']<br>
      | DEBUG: Python function autotools_aclocals finished<br>
      | DEBUG: Executing shell function do_configure<br>
      | Unescaped left brace in regex is illegal here in regex; marked
      by &lt;-- HERE in m/\${ &lt;-- HERE ([^ \t=:+{}]+)}/ at
/home/bianchi77/poky/build/tmp/work/x86_64-linux/libffi-native/3.2.1-r0/recipe-sysroot-native/usr/bin/automake
      line 3940.<br>
      | Unescaped left brace in regex is illegal here in regex; marked
      by &lt;-- HERE in m/\${ &lt;-- HERE ([^ \t=:+{}]+)}/ at
/home/bianchi77/poky/build/tmp/work/x86_64-linux/libffi-native/3.2.1-r0/recipe-sysroot-native/usr/bin/automake
      line 3940.<br>
      | WARNING: exit code 255 from a shell command.<br>
    </p>
    <p>=====</p>
    <p>Does anyone know any ideas about it ?</p>
    <p>Thanks,<br>
    </p>
    <div class="moz-signature">-- <br>
      <b>
        <p style="color:blue;"> /*******/<br>
          Sent by Ubuntu LTS 16.04,<br>
          Kind regards,<br>
          Riko Ho<br>
          /*******/<br>
        </p>
      </b></div>
  </body>
</html>

--------------E1D05F67D9D87D03570E78FE--
