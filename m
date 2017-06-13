Return-Path: <jdamon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C653FE00ACF; Tue, 13 Jun 2017 12:26:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jdamon[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BE60E00888
	for <yocto@yoctoproject.org>; Tue, 13 Jun 2017 12:26:13 -0700 (PDT)
Received: by mail-pg0-f68.google.com with SMTP id v14so20426209pgn.1
	for <yocto@yoctoproject.org>; Tue, 13 Jun 2017 12:26:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=vJgyDTNe90rE96zHGQaaDd2l2H+mBuI4BAFxHLtyZ7s=;
	b=MzWDgfjaeFxXcFDajNJcnOzq2lluUCtHkWurLmsf2pkgj2fE38uBybeSlfJl+nkLqO
	2M2Z46iAD6HmETOHoNv02MvOPc4CsyyKpXENiw0xvuUiqTWTQGdYCAoGbgQr1MvwVstg
	DDr7AV4/FiKqeZEooSATONhksmYFH90+NDbp+AY7s+JPC8ZfzmgI4umqsH/D+FA6C9DI
	wkiw0DoICo8G0NPDYUjfBrWHaKDZj2/nkOa1/H9cyo7x6RW56ef1v13BKFcNI9y2ffHw
	r5jpISBI7Ec6sJL8tnEZc9t3xmi7A/A5iQ1aAA1FHmTwmN2YbSo2o5xLAjSIfH4Uv7i0
	vp8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=vJgyDTNe90rE96zHGQaaDd2l2H+mBuI4BAFxHLtyZ7s=;
	b=CrL4ZA7t+V/MSkKYL8zcwAbHk7+UasLwjBaajyD5A1XUNnjc2oHtyu/iN0GY90JyMU
	M0pf6P8XGTXulV7tfw35rEPqdstHvd/LMI33X337LFctNsZqnLKvzzuXqhbBQQGsy9Fd
	MlPvUPPQO7wOAsTcxWivM74yx1PJTDmPADHTgRNleSMCc9vtUxkHX4A6Pz1OfRl04evg
	Y9pvDv88BF7M0UUjN6o69Xzgex1PZNIPDOC1Q4OqtuNumgTfYjtOu+00qOn12reUrAAj
	EuSMXZiNr7UXQ/3gOamJdcpNzDmb5jxebHag7HzmnninldQP/AfGQz7Hv+mhRIiwehIh
	397A==
X-Gm-Message-State: AKS2vOz0j3dh/i2ANbnW6nrsp4sNKAt1qBfDMt9PWDc11CF4COxni7Cv
	1czgpGaDJHjAveO7PBY=
X-Received: by 10.84.130.2 with SMTP id 2mr1274261plc.242.1497381972452;
	Tue, 13 Jun 2017 12:26:12 -0700 (PDT)
Received: from [10.0.0.98] ([216.84.176.126]) by smtp.gmail.com with ESMTPSA id
	i190sm23072774pfc.69.2017.06.13.12.26.11
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 13 Jun 2017 12:26:11 -0700 (PDT)
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
References: <8d6fe5c7-dbfa-7a17-071c-1330cdf3a672@gmail.com>
	<1497382345.23013.6.camel@linux.intel.com>
From: Jimi Damon <jdamon@gmail.com>
Message-ID: <4f2248fb-0d42-6876-9950-815af230c127@gmail.com>
Date: Tue, 13 Jun 2017 12:26:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <1497382345.23013.6.camel@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Preventing a package from building
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
X-List-Received-Date: Tue, 13 Jun 2017 19:26:16 -0000
Content-Type: multipart/alternative;
	boundary="------------5B54C5F406FEC4A58F26B5AD"
Content-Language: en-US

--------------5B54C5F406FEC4A58F26B5AD
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


This package is being built on the host side during a bitbake using a 
Boundary Devices Yocto build (

* MACHINE=nitrogen6x DISTRO=fslc-x11 . setup-environment build *

+

* bitbake boundary-eval-image-xfce *

) .

I was looking for an easy way to disable even building this into the 
image since the compilation takes quite a long time for Chromium.



On 06/13/2017 12:32 PM, Leonardo Sandoval wrote:
> On Tue, 2017-06-13 at 11:32 -0700, Jimi Damon wrote:
>> Hi,
>>
>>
>> I tried using the PACKAGE_EXCLUDE = "chromium" in my local.conf file
>> but I'm finding that my build it is still trying to build this
>> package.
>>
> is it on your image? at the end, this variable is to exclude the package
> on the resulting image/rootfs.
>
>> Is there a way to prevent this build stage from occurring ?
>>
>>
>>
>> Thanks
>>
>>
>> -- 
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>


--------------5B54C5F406FEC4A58F26B5AD
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><font face="Monaco"><br>
      </font></p>
    <p><font face="Monaco">This package is being built on the host side
        during a bitbake using a Boundary Devices Yocto build ( <br>
      </font></p>
    <p><font face="Monaco"><b> MACHINE=nitrogen6x DISTRO=fslc-x11 .
          setup-environment build </b><br>
      </font></p>
    <p><font face="Monaco">+<br>
      </font></p>
    <p><font face="Monaco"><b> bitbake boundary-eval-image-xfce    </b><br>
      </font></p>
    <p><font face="Monaco">) . <br>
      </font></p>
    <p><font face="Monaco"> I was looking for an easy way to disable
        even building this into the image since the compilation takes
        quite a long time for Chromium.</font></p>
    <p><font face="Monaco"><br>
      </font></p>
    <br>
    <div class="moz-cite-prefix">On 06/13/2017 12:32 PM, Leonardo
      Sandoval wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:1497382345.23013.6.camel@linux.intel.com">
      <pre wrap="">On Tue, 2017-06-13 at 11:32 -0700, Jimi Damon wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">Hi,


I tried using the PACKAGE_EXCLUDE = "chromium" in my local.conf file
but I'm finding that my build it is still trying to build this
package.

</pre>
      </blockquote>
      <pre wrap="">is it on your image? at the end, this variable is to exclude the package
on the resulting image/rootfs.

</pre>
      <blockquote type="cite">
        <pre wrap="">
Is there a way to prevent this build stage from occurring ? 



Thanks


-- 
_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
      </blockquote>
      <pre wrap="">

</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------5B54C5F406FEC4A58F26B5AD--
