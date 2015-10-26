Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E210E00B9A; Mon, 26 Oct 2015 04:10:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.54 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (net147[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86D36E00B8F
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 04:10:41 -0700 (PDT)
Received: by pacfv9 with SMTP id fv9so194307547pac.3
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 04:10:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=nsxzv/I7XzvmtZfLTMaY9aBkqooJb2EJ8KIIYZ6OpqE=;
	b=nTTHy59/fgvq22c/z0sHsaU73oMgf2GODMG4zKPtjFGIBvmYMwo0TTviVcrG+aWemg
	t/h61XG4gFj070Pz53RIeEe2U6v5vRZxo4WrPNVCCne91jVjtElETqIvhjyfkAfU6/jf
	//4l7+7pvnmlLmic0OJvywUksZbDLFw0LvOeISU3+QtFw1ShKWId74lYnGg9g02JcyD8
	IEWjln8UavZ5ssl4voZl/niE+k239/h0CVUid7KEmjndWS0RTeqpRdIqYKLDNbOnDXtk
	Ie02tgJOOdcbZ14owx1/CAE+qNVwfjOFvsQOyrMqa7O63JQWR5xMT8NlqiJJ7eNrhZYu
	XKNA==
X-Received: by 10.68.69.107 with SMTP id d11mr21901749pbu.24.1445857840922;
	Mon, 26 Oct 2015 04:10:40 -0700 (PDT)
Received: from [192.168.0.2] (60-242-179-244.static.tpgi.com.au.
	[60.242.179.244]) by smtp.gmail.com with ESMTPSA id
	ze3sm33475609pac.5.2015.10.26.04.10.37
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 26 Oct 2015 04:10:40 -0700 (PDT)
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <1445812988-6456-1-git-send-email-net147@gmail.com>
	<22952530.4yyL14nzOX@peggleto-mobl.ger.corp.intel.com>
	<562E04F8.6090309@gmail.com>
	<3091928.1ZnyljVrr4@peggleto-mobl.ger.corp.intel.com>
From: Jonathan Liu <net147@gmail.com>
Message-ID: <562E0A25.7070103@gmail.com>
Date: Mon, 26 Oct 2015 22:10:29 +1100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <3091928.1ZnyljVrr4@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v2] qtbase: enable Raspberry Pi support
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
X-List-Received-Date: Mon, 26 Oct 2015 11:10:43 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 26/10/2015 9:54 PM, Paul Eggleton wrote:
> On Monday 26 October 2015 21:48:24 Jonathan Liu wrote:
>> On 26/10/2015 8:41 PM, Paul Eggleton wrote:
>>> On Monday 26 October 2015 10:15:49 Andrei Gherzan wrote:
>>>> Hi Paul,
>>>>
>>>> On Mon, Oct 26, 2015 at 08:08:29AM +0000, Paul Eggleton wrote:
>>>>> On Monday 26 October 2015 09:43:08 Jonathan Liu wrote:
>>>>>> [Support #16]
>>>>>>
>>>>>> Signed-off-by: Jonathan Liu <net147@gmail.com>
>>>>>> ---
>>>>>>
>>>>>>    recipes-qt/qt5/qtbase_%.bbappend | 6 ++++++
>>>>>>    1 file changed, 6 insertions(+)
>>>>>>    create mode 100644 recipes-qt/qt5/qtbase_%.bbappend
>>>>>>
>>>>>> diff --git a/recipes-qt/qt5/qtbase_%.bbappend
>>>>>> b/recipes-qt/qt5/qtbase_%.bbappend new file mode 100644
>>>>>> index 0000000..3e5e667
>>>>>> --- /dev/null
>>>>>> +++ b/recipes-qt/qt5/qtbase_%.bbappend
>>>>>> @@ -0,0 +1,6 @@
>>>>>> +do_configure_prepend_rpi() {
>>>>>> +    cat > ${S}/mkspecs/oe-device-extra.pri << 'EOF'
>>>>>> +EGLFS_DEVICE_INTEGRATION = eglfs_brcm
>>>>>> +QMAKE_LIBS_EGL = -lEGL -lGLESv2
>>>>>> +EOF
>>>>>> +}
>>>>> I'm wondering if this is a good idea or not. I appreciate the intention,
>>>>> but does bbappending non-machine-specific recipes like this play well
>>>>> when you have other machines enabled in the same distro?
>>>> But this change will be applied only for _rpi. How is this affecting
>>>> other
>>>> machines?
>>> If everything works such that the resulting packages get marked as
>>> machine-
>>> specific and the package manager correctly installs them in preference to
>>> the generic architecture packages on the machines in question, then there
>>> won't be a massive problem (though the side-effect is probably that any
>>> recipes depending on qtbase will also become machine-specific, that is
>>> possibly more of an issue).
>>>
>>> Cheers,
>>> Paul
>> Good point. The package arch needs to machine-specific. I will send a v3
>> to fix this.
> I think that will get taken care of automatically by virtue of the machine-
> specific override. My question is more about:
>
> 1) Will that mechanism entirely work, including desired behaviours in both the
> build system and the package manager, and
>
> 2) Are any side-effects worth it?
>
> Cheers,
> Paul
>
It wasn't automatically taken care of. I checked the package 
architecture and it was incorrect with the v2 patch.
The machine-specific architecture has a higher priority (from my reading 
of the opkg handling) so opkg at least should prefer it if a more 
generic architecture package is also present. I haven't tested it 
thoroughly though.

It seems worth it to have OpenGL ES graphics acceleration.

Regards,
Jonathan

