Return-Path: <jfabernathy@gmail.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7BF8E004D2
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 14:39:44 -0800 (PST)
Received: by qauh8 with SMTP id h8so1346021qau.14
	for <yocto@yoctoproject.org>; Wed, 01 Feb 2012 14:39:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type;
	bh=mbaaooTmKep/ppbhoa/Zhq1YEGe1MPHpUF/m+6k0+60=;
	b=JRgbo4Ogidb8jVVaZTNGRAmWRojbSsPV6eJuZgSq1Q5SJyfQm/uqvmsdmXrpbBK2fC
	Hxd4nZONivcHQfx4vef5SJV1tCbunEDBtKDkZgk3Z/kCUYJ9W6d1py0ioJvTkg9+FhLX
	QczKSrivGQBwzdSHa6BazROf8uRMv74APN+7Q=
Received: by 10.224.200.1 with SMTP id eu1mr852404qab.75.1328135984089;
	Wed, 01 Feb 2012 14:39:44 -0800 (PST)
Received: from [10.0.1.54] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id g3sm1341087qap.2.2012.02.01.14.39.42
	(version=SSLv3 cipher=OTHER); Wed, 01 Feb 2012 14:39:43 -0800 (PST)
Message-ID: <4F29BF30.80808@gmail.com>
Date: Wed, 01 Feb 2012 17:39:44 -0500
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <63ECFF2A2302B44093D7CE9E9962C49002A109@ORSMSX103.amr.corp.intel.com>
	<4F298A58.5030700@linux.intel.com>
	<63ECFF2A2302B44093D7CE9E9962C49002A3CC@ORSMSX103.amr.corp.intel.com>
	<4F29B248.4060202@linux.intel.com>
	<1328132827.2304.149.camel@elmorro>
In-Reply-To: <1328132827.2304.149.camel@elmorro>
Subject: Re: Gaku music player
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 01 Feb 2012 22:39:45 -0000
Content-Type: multipart/alternative;
	boundary="------------050808020301090209010401"

--------------050808020301090209010401
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/01/2012 04:47 PM, Tom Zanussi wrote:
> On Wed, 2012-02-01 at 13:44 -0800, Darren Hart wrote:
>> On 02/01/2012 01:36 PM, Saxena, Rahul wrote:
>>> Hi Darren,
>>>
>>> Thanks for the clarification.
>>>
>>> I am building on Edison.  I found that ogg music files play
>>> OK on my gaku player.  I think that should be good enough, but just for my information purposes
>>> can you help me understand how does one accept the commercial iirc license ?
>> This has changed relatively recently, and I'm not finding the details in
>> the current docs. For example, the gst-fluendo-mp3 recipe includes:
>>
>> LICENSE_FLAGS = "commercial"
>>
>> Taking a look at the git logs with "LICENSE_FLAGS" in them, in order to
>> allow for building of such recipes, you must include "commercial" in the
>> LICENSE_FLAGS_WHITELIST variable. I would attempt this with something
>> like the following in my local.conf:
>>
>> LICENSE_FLAGS_WHITELIST += "commercial"
>>
>> Tom, can you confirm I've got this right?
>>
> Yeah, that's right.
>
> Tom
I'm interested in this subject also.  If I use hob to look at a nice 
display of packages, I see that their are a lot of gst-fluendo-* pckages 
with MPLv1.1 Licenses. However, I don't see gst-fluendo-mp3 specifically.

 1. Is that package not a part of Yocto and a recipe has to be written
    to get it from somewhere?
 2. I know I can get the fluendo MP3 for Ubuntu with a click-through
    license for personal use.

>> Scott, once Tom confirms, this is a mechanism we need to get documented
>> in the reference manual.
>>
>> --
>> Darren
>>
>>
>>> Thanks
>>> Rahul
>>>
>>> -----Original Message-----
>>> From: Darren Hart [mailto:dvhart@linux.intel.com]
>>> Sent: Wednesday, February 01, 2012 10:54 AM
>>> To: Saxena, Rahul
>>> Cc: yocto@yoctoproject.org
>>> Subject: Re: [yocto] Gaku music player
>>>
>>>
>>>
>>> On 02/01/2012 09:57 AM, Saxena, Rahul wrote:
>>>> Hello,
>>>>
>>>>
>>>>
>>>> What type of music files is the Gaku music player on Sato desk top
>>>> supposed to play ?
>>>>
>>>> For me it did not work with mp3 files..however it is playing the
>>>> soundtrack from a .ogg video file
>>> It depends on which licenses you allow (the gstreamer mp3 plugin
>>> requires acceptance of the commercial license iirc). Are you building on
>>> edison or master?
>>>
>>> --
>>> Darren Hart
>>> Intel Open Source Technology Center
>>> Yocto Project - Linux Kernel
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--------------050808020301090209010401
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    On 02/01/2012 04:47 PM, Tom Zanussi wrote:
    <blockquote cite="mid:1328132827.2304.149.camel@elmorro" type="cite">
      <pre wrap="">On Wed, 2012-02-01 at 13:44 -0800, Darren Hart wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">
On 02/01/2012 01:36 PM, Saxena, Rahul wrote:
</pre>
        <blockquote type="cite">
          <pre wrap="">Hi Darren,

Thanks for the clarification.

I am building on Edison.  I found that ogg music files play
OK on my gaku player.  I think that should be good enough, but just for my information purposes
can you help me understand how does one accept the commercial iirc license ?
</pre>
        </blockquote>
        <pre wrap="">
This has changed relatively recently, and I'm not finding the details in
the current docs. For example, the gst-fluendo-mp3 recipe includes:

LICENSE_FLAGS = "commercial"

Taking a look at the git logs with "LICENSE_FLAGS" in them, in order to
allow for building of such recipes, you must include "commercial" in the
LICENSE_FLAGS_WHITELIST variable. I would attempt this with something
like the following in my local.conf:

LICENSE_FLAGS_WHITELIST += "commercial"

Tom, can you confirm I've got this right?

</pre>
      </blockquote>
      <pre wrap="">
Yeah, that's right.

Tom
</pre>
    </blockquote>
    I'm interested in this subject also.&nbsp; If I use hob to look at a nice
    display of packages, I see that their are a lot of gst-fluendo-*
    pckages with MPLv1.1 Licenses. However, I don't see gst-fluendo-mp3
    specifically.&nbsp; <br>
    <ol>
      <li>Is that package not a part of Yocto and a recipe has to be
        written to get it from somewhere?</li>
      <li>I know I can get the fluendo MP3 for Ubuntu with a
        click-through license for personal use.</li>
    </ol>
    <blockquote cite="mid:1328132827.2304.149.camel@elmorro" type="cite">
      <pre wrap="">
</pre>
      <blockquote type="cite">
        <pre wrap="">Scott, once Tom confirms, this is a mechanism we need to get documented
in the reference manual.

--
Darren


</pre>
        <blockquote type="cite">
          <pre wrap="">
Thanks
Rahul

-----Original Message-----
From: Darren Hart [<a class="moz-txt-link-freetext" href="mailto:dvhart@linux.intel.com">mailto:dvhart@linux.intel.com</a>] 
Sent: Wednesday, February 01, 2012 10:54 AM
To: Saxena, Rahul
Cc: <a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
Subject: Re: [yocto] Gaku music player



On 02/01/2012 09:57 AM, Saxena, Rahul wrote:
</pre>
          <blockquote type="cite">
            <pre wrap="">Hello,

 

What type of music files is the Gaku music player on Sato desk top
supposed to play ?

For me it did not work with mp3 files..however it is playing the
soundtrack from a .ogg video file
</pre>
          </blockquote>
          <pre wrap="">
It depends on which licenses you allow (the gstreamer mp3 plugin
requires acceptance of the commercial license iirc). Are you building on
edison or master?

--
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel
</pre>
        </blockquote>
        <pre wrap="">
</pre>
      </blockquote>
      <pre wrap="">

_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------050808020301090209010401--
