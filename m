Return-Path: <ayoub.zaki@embexus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FC35E00C9E; Wed,  2 Aug 2017 03:02:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.30.212.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mailrelay4-3.pub.mailoutpod1-cph3.one.com
	(mailrelay4-3.pub.mailoutpod1-cph3.one.com [46.30.212.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0E02E00C19
	for <yocto@yoctoproject.org>; Wed,  2 Aug 2017 03:02:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=embexus.com; s=20140924;
	h=from:subject:date:message-id:to:mime-version:content-type:in-reply-to:
	references; bh=r9snXCdWfS2Ww7S/uI1co5pAG2NmEah9J3cdJ/db6eQ=;
	b=Wxu54cAg3vk2B2X9Wdyugy8pp7PzwwtoipNctSnPRUaOGQrvPHt1r34vwP7ZDoX7VKKLr51Y8x15o
	4wl0L2UlMl9Kw7zwNUlBhF1qco1ZKmJnpYXBcUwqfXuvlO3mn3lI+PYAh2q16YFwrUYOVF7nXTnvxj
	Oz8xm8rJ+GXtaics=
X-HalOne-Cookie: 13fb094b081224eb0f55efe5af0e8c6dd6602cf9
X-HalOne-ID: b7483273-7769-11e7-b00f-b82a72cffc46
Received: from [192.168.1.10] (unknown [77.2.202.172])
	by smtpfilter4.public.one.com (Halon) with ESMTPSA
	id b7483273-7769-11e7-b00f-b82a72cffc46;
	Wed, 02 Aug 2017 10:02:39 +0000 (UTC)
To: yocto@yoctoproject.org
References: <568398942.4073936.1501667235929.ref@mail.yahoo.com>
	<568398942.4073936.1501667235929@mail.yahoo.com>
	<20170802115724.b3e533695e670e4fef58bbdd@t-online.de>
From: Ayoub Zaki <ayoub.zaki@embexus.com>
Message-ID: <fedb555b-7d07-c3bd-1399-f49a220ebfbf@embexus.com>
Date: Wed, 2 Aug 2017 12:02:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20170802115724.b3e533695e670e4fef58bbdd@t-online.de>
Subject: Re: How to strip down my Yocto Linux?
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
X-List-Received-Date: Wed, 02 Aug 2017 10:02:43 -0000
Content-Type: multipart/alternative;
	boundary="------------7ECD03E08FB515FCB089CB78"
Content-Language: en-US

--------------7ECD03E08FB515FCB089CB78
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

A quick win also to remove DISTRO features in local.conf that your 
application(s) does not need  :

DISTRO_FEATURES_remove = "bluetooth"
DISTRO_FEATURES_remove = "3g"
DISTRO_FEATURES_remove = "opengl"
DISTRO_FEATURES_remove = "wayland"
DISTRO_FEATURES_remove = "x11"
DISTRO_FEATURES_remove = "nfc"
DISTRO_FEATURES_remove = "nfs"
DISTRO_FEATURES_remove = "ext2"

etc...

-- 

Ayoub Zaki

ayoub.zaki@embexus.com
Mobile: +49(0)176-62901545
Skype: ayoub.zaki_2
https://embexus.com


On 02.08.2017 11:57, Markus Volk wrote:
> I guess that depends on what your needs are. Personally i would start to build core-image-minimal and just add the packages i need
>
> regards
> Markus
>
> On Wed, 2 Aug 2017 09:47:15 +0000 (UTC)
> Bacheh Karaji <bachehkaraji@yahoo.com> wrote:
>
>> I would like to strip down my Yocto Linux before put in it to flash. Unneeded software, man pages, POCO sample codes and other documentation just waste resource, especially on the i.MX28 EVK with only 128MB flash.
>>
>> My local.conf file looks following:
>>
>> $ gedit conf/local.conf &
>> ...
>> IMAGE_INSTALL_append = " poco nginx canutils vsftpd curl fcgi spawn-fcgi net-snmp util-linux ubiattach-klibc ubimkvol-klibc ubiformat-klibc minicom net-tools zeroconf avahi-autoipd mtd-utils u-boot-fw-utils ethtool"
>> ...
>> I bitbake the image "core-image-base".
>>
>> I was wondering, is there a way that I can delete all of the Unneeded files?
>>
>> Can somebody help me howto strip down my Yocto Linux?
>>
>


--------------7ECD03E08FB515FCB089CB78
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>A quick win also to remove DISTRO features in local.conf that
      your application(s) does not need  :</p>
    <p><span class="crayon-v" style="box-sizing: border-box;
        font-family: inherit; height: inherit; font-size: inherit
        !important; line-height: inherit !important; font-weight:
        inherit !important; color: rgb(0, 45, 122) !important;">DISTRO_FEATURES_remove
        = "bluetooth"<br>
        DISTRO_FEATURES_remove = "3g"<br>
        DISTRO_FEATURES_remove = "opengl"<br>
        DISTRO_FEATURES_remove = "wayland"<br>
        DISTRO_FEATURES_remove = "x11"<br>
        DISTRO_FEATURES_remove = "nfc"<br>
        DISTRO_FEATURES_remove = "nfs"<br>
        DISTRO_FEATURES_remove = "ext2"</span></p>
    <p><span class="crayon-v" style="box-sizing: border-box;
        font-family: inherit; height: inherit; font-size: inherit
        !important; line-height: inherit !important; font-weight:
        inherit !important; color: rgb(0, 45, 122) !important;">etc...<br>
      </span></p>
    <pre class="moz-signature" cols="72">-- 

Ayoub Zaki

<a class="moz-txt-link-abbreviated" href="mailto:ayoub.zaki@embexus.com">ayoub.zaki@embexus.com</a>
Mobile: +49(0)176-62901545
Skype: ayoub.zaki_2
<a class="moz-txt-link-freetext" href="https://embexus.com">https://embexus.com</a></pre>
    <br>
    <div class="moz-cite-prefix">On 02.08.2017 11:57, Markus Volk wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20170802115724.b3e533695e670e4fef58bbdd@t-online.de">
      <pre wrap="">I guess that depends on what your needs are. Personally i would start to build core-image-minimal and just add the packages i need

regards
Markus

On Wed, 2 Aug 2017 09:47:15 +0000 (UTC)
Bacheh Karaji <a class="moz-txt-link-rfc2396E" href="mailto:bachehkaraji@yahoo.com">&lt;bachehkaraji@yahoo.com&gt;</a> wrote:

</pre>
      <blockquote type="cite">
        <pre wrap="">
I would like to strip down my Yocto Linux before put in it to flash. Unneeded software, man pages, POCO sample codes and other documentation just waste resource, especially on the i.MX28 EVK with only 128MB flash.

My local.conf file looks following:

$ gedit conf/local.conf &amp;
...
IMAGE_INSTALL_append = " poco nginx canutils vsftpd curl fcgi spawn-fcgi net-snmp util-linux ubiattach-klibc ubimkvol-klibc ubiformat-klibc minicom net-tools zeroconf avahi-autoipd mtd-utils u-boot-fw-utils ethtool"
...
I bitbake the image "core-image-base".

I was wondering, is there a way that I can delete all of the Unneeded files?

Can somebody help me howto strip down my Yocto Linux?

</pre>
      </blockquote>
      <pre wrap="">

</pre>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">
</pre>
  </body>
</html>

--------------7ECD03E08FB515FCB089CB78--
