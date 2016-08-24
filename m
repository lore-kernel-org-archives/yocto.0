Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D8B2E00CC0; Wed, 24 Aug 2016 06:51:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.174 listed in list.dnswl.org]
Received: from mail-yb0-f174.google.com (mail-yb0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D17E5E009C9
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2016 06:51:32 -0700 (PDT)
Received: by mail-yb0-f174.google.com with SMTP id z10so5634697ybh.2
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2016 06:51:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1eaLOTaO9wVjxFrLRLhi+yw2lTa3EsArlWYdMLV79Qs=;
	b=ViShSmtAV5J9XMC+C+pJa/AgFg5y/cSoCEbpEAw1c6UWkK/Xf9705BszV00ODMpyP+
	fARn66nSM1tYa4V24d5XYZQA0d6fL9bh7WB56jWHQIYlwFxOBhUiEjaN3wzQDP/1COe6
	5vDlE7cyv3kU0meA9lHrXbfTVF+4ecc3FyAl7vHKtNhNQN3E+5p2VN++gJ/WLOnMnVJp
	cgnO3isduMwVFm8Ka8zwjRiQ3Igve5yUfeEOfYoPY2qp5AEigl378OpGZpDvfBHWgEHq
	Nq9S8uOQeXUEhEadzcljeFOpcKu0hBo9kA3EtkPMq8LlA7WYEyEEfG4boOGsN5x8QjZ+
	yW0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1eaLOTaO9wVjxFrLRLhi+yw2lTa3EsArlWYdMLV79Qs=;
	b=VtLQ33d9+z1V/57aDy5adLte03lFIDgi+9712q0MRugDvjTsIWZ+VtafqTlI4qZo7z
	6n61hMs3khyH2zunzkcFSlLZ0fGgCDcbvgghj/8sJSOvmhf0duUn/rRdB65EoRV0W72/
	pqwlwQ01XyOy6xR1pF9v+2yXV7kOUT6zgkDIFqwbfp4A/C+8+cYIAHfh/O0LN586oLXL
	6tFPNhiRppCPkYXSAwJGBU9AO0h6QpbEQS82LOGNr27j66O6fhGI6L6Ta4f3OyD2BeeY
	z12sFubIKKD8iKRCgHIbjOhBzgsa+HUwXctCaBdwLEmhwwt46v3HRucMGXxEIWryOqnY
	OEsg==
X-Gm-Message-State: AEkoouvDBEUmFnCGo/r/mQVYg4ZW7/jUfZCPmFo6ZeP4kjneHbxfL3CghMo4BaXYsBczCcjNti9MJGnpjNRD7A==
X-Received: by 10.37.39.199 with SMTP id n190mr2379361ybn.30.1472046691726;
	Wed, 24 Aug 2016 06:51:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.86.70 with HTTP; Wed, 24 Aug 2016 06:51:31 -0700 (PDT)
In-Reply-To: <20160824105126.GA17259@linux.intel.com>
References: <CAOsp8o8jNrRhcYp=vWAve+v+s1Mi2ApQD1zmVot-iD+0uVnbjg@mail.gmail.com>
	<20160824105126.GA17259@linux.intel.com>
From: Michael Habibi <mikehabibi@gmail.com>
Date: Wed, 24 Aug 2016 08:51:31 -0500
Message-ID: <CAOsp8o-YYspLj39YS_ZNpgqBsVLkUwQkvCNRO3No1Rs2fR+3XA@mail.gmail.com>
To: ed.bartosh@linux.intel.com
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Trying to run toaster off master, running into issues w/ django
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
X-List-Received-Date: Wed, 24 Aug 2016 13:51:35 -0000
Content-Type: text/plain; charset=UTF-8

Excellent. Thanks! I knew using latest was going to burn me eventually :)

On Wed, Aug 24, 2016 at 5:51 AM, Ed Bartosh <ed.bartosh@linux.intel.com> wrote:
> On Tue, Aug 23, 2016 at 04:49:42PM -0500, Michael Habibi wrote:
>> I am running the master branch and trying to run toaster to play
>> around with the web interface (already successfully completed a build
>> w/o toaster setup).
>>
>> I followed the instructions in the documentation. I created a
>> virtualenv, sourced/activated my virtualenv, and while under venv I
>> did a pip install. It believes Django is installed, but I cannot run
>> toaster. See below:
>>
>> (venv)habibim@bvm-poc8:/projects/yocto-git/build$ pip install -r
>> /projects/yocto-git/bitbake/toaster-requirements.txt
>> Requirement already satisfied (use --upgrade to upgrade):
>> Django>1.8,<1.9 in /home/habibim/venv/lib/python2.7/site-packages
>> (from -r /projects/yocto-git/bitbake/toaster-requirements.txt (line
>> 1))
>> Requirement already satisfied (use --upgrade to upgrade):
>> beautifulsoup4>=4.4.0 in
>> /home/habibim/venv/lib/python2.7/site-packages (from -r
>> /projects/yocto-git/bitbake/toaster-requirements.txt (line 2))
>> Requirement already satisfied (use --upgrade to upgrade): pytz in
>> /home/habibim/venv/lib/python2.7/site-packages (from -r
>> /projects/yocto-git/bitbake/toaster-requirements.txt (line 3))
>> Cleaning up...
>> (venv)habibim@bvm-poc8:/projects/yocto-git/build$ python --version
>> Python 2.7.6
>>
>> ...
>>
>>
>> (venv)habibim@bvm-poc8:/projects/yocto-git$ source oe-init-build-env
>>
>> ### Shell environment set up for builds. ###
>>
>> You can now run 'bitbake <target>'
>>
>> Common targets are:
>>     core-image-minimal
>>     core-image-sato
>>     meta-toolchain
>>     meta-ide-support
>>
>> You can also run generated qemu images with a command like 'runqemu qemux86'
>> (venv)habibim@bvm-poc8:/projects/yocto-git/build$ source ../bitbake/bin/toaster
>> Traceback (most recent call last):
>>   File "<stdin>", line 1, in <module>
>> ImportError: No module named 'django'
>> This program needs Django>1.8,<1.9
>> Please install with pip install -r
>> /projects/yocto-git/bitbake/toaster-requirements.txt
>>
>> Am I going insane? I did some google-fu and people recommended
>> cleaning up manage.py, but those changes did not seem to affect this
>> outcome.
>
> Looks like python3 issue to me. You should install requirements with
> pip3 for python3 to be able to import them.
>
> You probably used old setup instructions. Please, read the latest manual here:
> http://www.yoctoproject.org/docs/latest/toaster-manual/toaster-manual.html#toaster-manual-setup-and-use
>
> Regards,
> Ed
>

