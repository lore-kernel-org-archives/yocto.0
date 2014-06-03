Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52D51E00B20; Tue,  3 Jun 2014 08:51:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.43 listed in list.dnswl.org]
Received: from mail-qg0-f43.google.com (mail-qg0-f43.google.com
	[209.85.192.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 770CAE0073D
	for <yocto@yoctoproject.org>; Tue,  3 Jun 2014 08:51:10 -0700 (PDT)
Received: by mail-qg0-f43.google.com with SMTP id 63so13516887qgz.2
	for <yocto@yoctoproject.org>; Tue, 03 Jun 2014 08:51:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=eLaNx9aEYw9/3ldzqHeaBh0OcDZfrZYzEhCv7139kXs=;
	b=lsZSVFXMD70yvpXilw6qePjXymdCGwV7UiPZqOgxRHJ0Qt8SvWrnvTE5u4ZmYXhKQF
	vAMrKpRIPay6hh12B/efZp/iUre146Zc13HM4EckUR522lJV73ut//Zn+XHeVclwvyoK
	Shi8vVktqkX8SucAp85Notm0enW03ciKeX2IVcERZQH6i2/U+QN9ZmPfC43R54cP4Fxq
	I33omI3H4bI6OVAbO1Iu0QbVcEKOcRsmYa3oDC4dpjwesCaoUuHiLqtYpioKMnWrJACx
	ACoxQgkXLEyF1WqeB9gOeZbcnNoi15nvlU8sZg74KEa0g3OdE7GEfbLxZCXmqbMYOxsZ
	Vjfw==
X-Gm-Message-State: ALoCoQnwP8Q9xuyrj5xnZ4etjg9K5M0dOz0QVgTol3aXsPSw/1wLmTevxdExq4d/u7425JcRkxSg
X-Received: by 10.224.151.206 with SMTP id d14mr61909355qaw.35.1401810670553; 
	Tue, 03 Jun 2014 08:51:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Tue, 3 Jun 2014 08:50:50 -0700 (PDT)
In-Reply-To: <CANJXcUYEdbSf1Fo5kZAw5GE+36fnz=EgzZojXxr44WdnCtC1Qg@mail.gmail.com>
References: <CANJXcUap4aox3bhkxzq+EqTtZHokfMX6cqaao5o0oLqqRE+4SA@mail.gmail.com>
	<CAJTo0LaNbvwf+2yEnPorOj81N4fSJwfYOxppqHcrX-hUHabBeA@mail.gmail.com>
	<CANJXcUaZm=4XeG4PDZwbaX+DtCo-fh+-aWWD49EsjOVmOuiN0Q@mail.gmail.com>
	<CANJXcUZOwrAuMjkt_RfBuSU3fyyDbay024qvf1KEfuPkOuJBew@mail.gmail.com>
	<CAJTo0Lbd257SN_SmwD=2MKYrw0LYODnhJoPhCPCSpdhxf7Nixw@mail.gmail.com>
	<CANJXcUYEdbSf1Fo5kZAw5GE+36fnz=EgzZojXxr44WdnCtC1Qg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 3 Jun 2014 16:50:50 +0100
Message-ID: <CAJTo0LbKNeujMacRb-O3RHq5LfWZ01axS-TYTwhScjFnm-uu8g@mail.gmail.com>
To: Kashyap Gada <gada.kashyap@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Source Command Permission Denied
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
X-List-Received-Date: Tue, 03 Jun 2014 15:51:20 -0000
Content-Type: text/plain; charset=UTF-8

So you probably lost every executable mode when you did that.  Make a
fresh clone and reapply your changes, that will be easier than finding
every file that isn't executable when it should be.

Ross

On 3 June 2014 16:49, Kashyap Gada <gada.kashyap@gmail.com> wrote:
> its copied!
>
>
> On Tue, Jun 3, 2014 at 9:16 PM, Burton, Ross <ross.burton@intel.com> wrote:
>>
>> On 3 June 2014 16:39, Kashyap Gada <gada.kashyap@gmail.com> wrote:
>> > bash: /home/kashyap/yocto/poky/scripts/oe-setup-builddir: Permission
>> > denied
>>
>> The permissions on that file don't involve +x.  Is that a fresh
>> checkout of poky or copied from the removable media?
>>
>> Ross
>
>

