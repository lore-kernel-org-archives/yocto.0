Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5C2DE00978; Mon, 26 Oct 2015 03:48:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E2D9E00978
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 03:48:35 -0700 (PDT)
Received: by pasz6 with SMTP id z6so185290364pas.2
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 03:48:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=sfPfIG7r7SmA634KhKtlL7Hz/QLoYkEJAn22KkYNYXw=;
	b=Qr0899jlZSVhSMUxkZHfCZo8MwhrUSI2FwW9j/voqlG+k3zFUORL8jBdc7BCG/tVL8
	tJ4nc1qyibK35/dbByKFwytxVuHEj4U5PAz+WFmLaW3zXNTVG1axd78OO2i0/5MFFWDf
	j2F/f3HaQap7DSSqRK4HObr9bXbmNZJw5Ci2R5vF67a0dmnc4uCBe74ABtHphC5i8SHX
	aR5+Peojup9divKpLM6FrKuJ+JcBZOekl6SPbFFvViD43OC4ZqinTElBCHH3U9eG2LDl
	yZQ5XcywJMG0C/FfVgoQzvjGmij3JTHjfdvSDpkvD6UMAkiI2fgpMlcNc/UI0BQoJK0Z
	FDCA==
X-Received: by 10.66.235.39 with SMTP id uj7mr21243835pac.34.1445856515237;
	Mon, 26 Oct 2015 03:48:35 -0700 (PDT)
Received: from [192.168.0.2] (60-242-179-244.static.tpgi.com.au.
	[60.242.179.244]) by smtp.gmail.com with ESMTPSA id
	es4sm33264761pbc.42.2015.10.26.03.48.32
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 26 Oct 2015 03:48:34 -0700 (PDT)
To: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Andrei Gherzan <andrei@gherzan.ro>
References: <1445812988-6456-1-git-send-email-net147@gmail.com>
	<5542134.NUiWrkt5lN@peggleto-mobl.ger.corp.intel.com>
	<20151026091549.GA19633@resin>
	<22952530.4yyL14nzOX@peggleto-mobl.ger.corp.intel.com>
From: Jonathan Liu <net147@gmail.com>
Message-ID: <562E04F8.6090309@gmail.com>
Date: Mon, 26 Oct 2015 21:48:24 +1100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <22952530.4yyL14nzOX@peggleto-mobl.ger.corp.intel.com>
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
X-List-Received-Date: Mon, 26 Oct 2015 10:48:37 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 26/10/2015 8:41 PM, Paul Eggleton wrote:
> On Monday 26 October 2015 10:15:49 Andrei Gherzan wrote:
>> Hi Paul,
>>
>> On Mon, Oct 26, 2015 at 08:08:29AM +0000, Paul Eggleton wrote:
>>> On Monday 26 October 2015 09:43:08 Jonathan Liu wrote:
>>>> [Support #16]
>>>>
>>>> Signed-off-by: Jonathan Liu <net147@gmail.com>
>>>> ---
>>>>
>>>>   recipes-qt/qt5/qtbase_%.bbappend | 6 ++++++
>>>>   1 file changed, 6 insertions(+)
>>>>   create mode 100644 recipes-qt/qt5/qtbase_%.bbappend
>>>>
>>>> diff --git a/recipes-qt/qt5/qtbase_%.bbappend
>>>> b/recipes-qt/qt5/qtbase_%.bbappend new file mode 100644
>>>> index 0000000..3e5e667
>>>> --- /dev/null
>>>> +++ b/recipes-qt/qt5/qtbase_%.bbappend
>>>> @@ -0,0 +1,6 @@
>>>> +do_configure_prepend_rpi() {
>>>> +    cat > ${S}/mkspecs/oe-device-extra.pri << 'EOF'
>>>> +EGLFS_DEVICE_INTEGRATION = eglfs_brcm
>>>> +QMAKE_LIBS_EGL = -lEGL -lGLESv2
>>>> +EOF
>>>> +}
>>> I'm wondering if this is a good idea or not. I appreciate the intention,
>>> but does bbappending non-machine-specific recipes like this play well
>>> when you have other machines enabled in the same distro?
>> But this change will be applied only for _rpi. How is this affecting other
>> machines?
> If everything works such that the resulting packages get marked as machine-
> specific and the package manager correctly installs them in preference to the
> generic architecture packages on the machines in question, then there won't be
> a massive problem (though the side-effect is probably that any recipes
> depending on qtbase will also become machine-specific, that is possibly more of
> an issue).
>
> Cheers,
> Paul
>
Good point. The package arch needs to machine-specific. I will send a v3 
to fix this.

Regards,
Jonathan

