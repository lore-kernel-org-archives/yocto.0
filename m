Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1BD74E00994; Thu, 30 Aug 2018 14:22:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f67.google.com (mail-oi0-f67.google.com
	[209.85.218.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83740E0079D
	for <yocto@yoctoproject.org>; Thu, 30 Aug 2018 14:22:30 -0700 (PDT)
Received: by mail-oi0-f67.google.com with SMTP id y207-v6so18032271oie.13
	for <yocto@yoctoproject.org>; Thu, 30 Aug 2018 14:22:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=p2uItQHaa18OW721RSnvU9eo0GkRicR9SWDhq0Nw6PY=;
	b=xnA/3e6ezhuflMN8ZXczBkUuV30Zsr6LUYPfRBGkcAZFpP5WPmKYVXuKCwQBhq/ZSR
	A27uS5+RGPUMfWoOz0qbj+VUCyq9JC5v3pWXgP7LA4lJPRlU8N6yJ9QuWfEmhfHh3D2A
	TCPKaIyrWJr8rwJRvHECjBQ4BaqMI5D3jMZ/qg3kBsfRZRynecvEdReT5XdF6LgwNgXg
	iIw5Ewj/hi6UCex2tqQhGfyPCFyXsf2LhS4b5J7cvTlQ7BKAK7/sEJPwIQ3n/HNB0kOz
	tc+g+cwHdibW0KQnDxdnwHIwpTVWnnX4gkOihTdQlEUGxnJqEdpoUotOk3cyMepBlg0s
	15lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=p2uItQHaa18OW721RSnvU9eo0GkRicR9SWDhq0Nw6PY=;
	b=sQod4Lq9esOAAYkBfOgmz8id44JDDOky2EAEyzuQqICzfinyJD6vugiXGnsE9Dli5m
	OXRbDuKNRAFRn5QGF9LE38Rr6tsI7j80XPLaixhQEDNUY8sxEIbf04R0VISw5HGbZNfB
	i3m4/z3OzoLL0WN1hmvvnBxX+VVdRnh44e8J/W6bR47VONSMi+/ByNVQNyF0j1ElqO8F
	31MI5+HPo7Voqn6xe/i76g+7LuXF+LYaliYwVstwr3NIIuSSy1NEFTZajTXGlAu/j6Rl
	ga2DBlwCY+9pvfEXSmMTs9YHML6QgOFuo7piMCZ3sDwwcbH6dynyi9VH5j70eApIOvYY
	jtMw==
X-Gm-Message-State: APzg51DDqFMFJE3N5r9FyXqFonpHLhYFA0XzysQXriS9NxTo9n2afI+n
	tHjzhjzaSl4FmJup3rnOUqLOiSv71RkWfZb78Lxbig==
X-Google-Smtp-Source: ANB0VdaV6zCykhcnbb5mSRgrJfOl4+OD4/et5yjJDmA1M3QJeKQ+kMn1xo2aCgIkOfR5FfpYpFhYzQdO5NJMDa0seSY=
X-Received: by 2002:aca:c74d:: with SMTP id
	x74-v6mr4052873oif.97.1535664149739; 
	Thu, 30 Aug 2018 14:22:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:7c0c:0:0:0:0:0 with HTTP; Thu, 30 Aug 2018 14:22:09
	-0700 (PDT)
In-Reply-To: <CAJdd5GbsEhoY8np0-j0mBzVmE9XkkeFdz5T8Ve+6CHygAByDgg@mail.gmail.com>
References: <20180824145347.15795-1-JPEWhacker@gmail.com>
	<CAJdd5GbsEhoY8np0-j0mBzVmE9XkkeFdz5T8Ve+6CHygAByDgg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 30 Aug 2018 22:22:09 +0100
Message-ID: <CAJTo0LZYDEj52D=W9QLFu6rdX92KOiGAQr=vvY2hdWivV7hYUA@mail.gmail.com>
To: Joshua Watt <jpewhacker@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-mingw][master/sumo][PATCH] swig: Add swig environment setup for SDK
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
X-List-Received-Date: Thu, 30 Aug 2018 21:22:31 -0000
Content-Type: text/plain; charset="UTF-8"

Was away for a week, back now.  Merged to both master and sumo.

Thanks,
Ross

On 30 August 2018 at 15:12, Joshua Watt <jpewhacker@gmail.com> wrote:
>
>
> On Fri, Aug 24, 2018, 09:54 Joshua Watt <jpewhacker@gmail.com> wrote:
>>
>> Configures the mingw SDK environment to set the SWIG_LIB environment
>> variable so that swig can find its core library. Otherwise, swig will
>> look for a directory called "Lib" next to the executable.
>>
>> Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
>> ---
>>  recipes-devtools/swig/swig_%.bbappend | 12 ++++++++++++
>>  1 file changed, 12 insertions(+)
>>  create mode 100644 recipes-devtools/swig/swig_%.bbappend
>>
>> diff --git a/recipes-devtools/swig/swig_%.bbappend
>> b/recipes-devtools/swig/swig_%.bbappend
>> new file mode 100644
>> index 0000000..de40609
>> --- /dev/null
>> +++ b/recipes-devtools/swig/swig_%.bbappend
>> @@ -0,0 +1,12 @@
>> +# A wrapper script won't work to set SWIG_LIB for a mingw SDK. Instead,
>> add an
>> +# environment setup batch file to set SWIG_LIB when the SDK is
>> configured.
>> +do_install_append_class-nativesdk_mingw32() {
>> +    install -d ${D}${SDKPATHNATIVE}/environment-setup.d
>> +
>> +    cat <<HEREDOC > ${D}${SDKPATHNATIVE}/environment-setup.d/swig.bat
>> +set SWIG_LIB=%OECORE_NATIVE_SYSROOT%\\usr\\share\\${BPN}\\${PV}
>> +HEREDOC
>> +}
>> +
>> +FILES_${PN}_append_class-nativesdk_mingw32 = "
>> ${SDKPATHNATIVE}/environment-setup.d"
>> +
>> --
>> 2.17.1
>
>
> Ping
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

