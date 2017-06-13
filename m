Return-Path: <jdamon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CB55E00ACF; Tue, 13 Jun 2017 14:25:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jdamon[at]gmail.com)
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
	*      [209.85.223.194 listed in list.dnswl.org]
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 880E2E00888
	for <yocto@yoctoproject.org>; Tue, 13 Jun 2017 14:25:23 -0700 (PDT)
Received: by mail-io0-f194.google.com with SMTP id i93so14332916iod.3
	for <yocto@yoctoproject.org>; Tue, 13 Jun 2017 14:25:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=cjEgMIi99CdvWJgMMFalA7pcKU+Psar3B36jr3XIlDE=;
	b=qeJ/Kb0kKCB1zTRi4JNBgqZ3OafSUagdaDC8u0iLHAVlGTN/I4ZfVQewAw9nu+zGEo
	+4K/au727pwP+beTSmOL//WbrIp12KF3hGJXsZkEWthZZuV2Py3t7GHOYeNOlirKqbHw
	uoAsOp4c8fCrksgU3YqG61Uho2bHtjDqAQzi7dnf4zhDmheAA5KoG/OkjVrf971art00
	G2vZHwRIdRYC6vlA3X97hKeHfy5vKX/0GSm3ekO3u8WECuS9sWNW+qOXzW6dRah223pO
	E3SKsMG68cDhKotl8XxYbNNd52wFTI/qGN3Z/Lc0oAVFlRqtq7+yWKkF1bTObS1SroCx
	CXBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=cjEgMIi99CdvWJgMMFalA7pcKU+Psar3B36jr3XIlDE=;
	b=Y+wrqwapBB3GC34eIpjhLksuW7JEh12Ra2l/QjLcp3cJhz4UsaWcW1JGEssrWq/61I
	f3FIRys4VnRqYIEyXB9elHeyBwg1zwGOrja1krwLSLOGDcSQ/WmVB/Cz0cixDObfN4AU
	w0f4sPs/W5TpMvTUIczb89kcu6SU56XiDTXAo932bvHI0Niv9D7Q9hFDcbPVWioso16g
	SK6KdWRJYI81gMUuzMyfBeW55CeRl8qCJr3cW4cvAJtwWr27vixR8rmff8QutvIrCcBC
	nkmq24TvDOkk0s2ZLHpsZgA3bPVEFkfBdbmjajnMhRbRExZL4LFv+dquOzMHHwWcCKGF
	lbww==
X-Gm-Message-State: AKS2vOyXZZJTcO5CAUg7+9IbUnxMU5nXyHiQP2QnCgqGAxJohczVXHP0
	j7auj1j8U3R5phVc7yw=
X-Received: by 10.107.40.18 with SMTP id o18mr2482004ioo.128.1497389122237;
	Tue, 13 Jun 2017 14:25:22 -0700 (PDT)
Received: from [10.0.0.98] ([216.84.176.126]) by smtp.gmail.com with ESMTPSA id
	v13sm2445990ita.28.2017.06.13.14.25.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 13 Jun 2017 14:25:20 -0700 (PDT)
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
References: <8d6fe5c7-dbfa-7a17-071c-1330cdf3a672@gmail.com>
	<1497382345.23013.6.camel@linux.intel.com>
	<4f2248fb-0d42-6876-9950-815af230c127@gmail.com>
	<1497383744.23013.10.camel@linux.intel.com>
From: Jimi Damon <jdamon@gmail.com>
Message-ID: <1316843c-ef8d-a05b-0405-87f3d8383dfb@gmail.com>
Date: Tue, 13 Jun 2017 14:25:31 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <1497383744.23013.10.camel@linux.intel.com>
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
X-List-Received-Date: Tue, 13 Jun 2017 21:25:25 -0000
Content-Type: multipart/alternative;
	boundary="------------F14ABB2618C6837C32C73B33"
Content-Language: en-US

--------------F14ABB2618C6837C32C73B33
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Is there a way to apply this ( or something like it ) inside the current 
bblayers.conf file ?

I've already built most of this image and I don't want to accidentally 
lose all of that work by changing a global configuration file nor do I 
wish to change the global recicpe itself if that's possible.


Thanks


On 06/13/2017 12:55 PM, Leonardo Sandoval wrote:
> On Tue, 2017-06-13 at 12:26 -0700, Jimi Damon wrote:
>> This package is being built on the host side during a bitbake using a
>> Boundary Devices Yocto build (
>>
>>
>>   MACHINE=nitrogen6x DISTRO=fslc-x11 . setup-environment build
>>
>>
>> +
>>
>>
>>   bitbake boundary-eval-image-xfce
>>
> try
>
> a bit hacky but you can also use the COMPATIBLE_HOST = "null" variable
> inside the chromium recipe,
> not really sure that works (never tried)
>
> leo
>
>> ) .
>>
>>
>> I was looking for an easy way to disable even building this into the
>> image since the compilation takes quite a long time for Chromium.
>>
>>
>>
>> On 06/13/2017 12:32 PM, Leonardo Sandoval wrote:
>>
>>> On Tue, 2017-06-13 at 11:32 -0700, Jimi Damon wrote:
>>>> Hi,
>>>>
>>>>
>>>> I tried using the PACKAGE_EXCLUDE = "chromium" in my local.conf file
>>>> but I'm finding that my build it is still trying to build this
>>>> package.
>>>>
>>> is it on your image? at the end, this variable is to exclude the package
>>> on the resulting image/rootfs.
>>>
>>>> Is there a way to prevent this build stage from occurring ?
>>>>
>>>>
>>>>
>>>> Thanks
>>>>
>>>>


--------------F14ABB2618C6837C32C73B33
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><font face="Monaco">Is there a way to apply this ( or something
        like it ) inside the current bblayers.conf file ? <br>
      </font></p>
    <p><font face="Monaco">I've already built most of this image and I
        don't want to accidentally lose all of that work by changing a
        global configuration file nor do I wish to change the global
        recicpe itself if that's possible.<br>
      </font></p>
    <p><font face="Monaco"><br>
      </font></p>
    <p><font face="Monaco">Thanks<br>
      </font></p>
    <br>
    <div class="moz-cite-prefix">On 06/13/2017 12:55 PM, Leonardo
      Sandoval wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:1497383744.23013.10.camel@linux.intel.com">
      <pre wrap="">On Tue, 2017-06-13 at 12:26 -0700, Jimi Damon wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">
This package is being built on the host side during a bitbake using a
Boundary Devices Yocto build ( 


 MACHINE=nitrogen6x DISTRO=fslc-x11 . setup-environment build 


+


 bitbake boundary-eval-image-xfce    

</pre>
      </blockquote>
      <pre wrap="">try

a bit hacky but you can also use the COMPATIBLE_HOST = "null" variable
inside the chromium recipe, 
</pre>
      <blockquote type="cite">
        <pre wrap="">
</pre>
      </blockquote>
      <pre wrap="">not really sure that works (never tried)

leo

</pre>
      <blockquote type="cite">
        <pre wrap="">) . 


I was looking for an easy way to disable even building this into the
image since the compilation takes quite a long time for Chromium.



On 06/13/2017 12:32 PM, Leonardo Sandoval wrote:

</pre>
        <blockquote type="cite">
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
            <pre wrap="">Is there a way to prevent this build stage from occurring ? 



Thanks


</pre>
          </blockquote>
          <pre wrap="">
</pre>
        </blockquote>
      </blockquote>
      <pre wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------F14ABB2618C6837C32C73B33--
