Return-Path: <fernando.ae2017@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F70EE00C9F; Fri,  8 Feb 2019 00:41:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,PLING_QUERY,RCVD_IN_DNSWL_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (fernando.ae2017[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 PLING_QUERY Subject has exclamation mark and question mark
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com
	[209.85.210.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 564A9E00C8A
	for <yocto@lists.yoctoproject.org>;
	Fri,  8 Feb 2019 00:41:22 -0800 (PST)
Received: by mail-ot1-f47.google.com with SMTP id a11so4559865otr.10
	for <yocto@lists.yoctoproject.org>;
	Fri, 08 Feb 2019 00:41:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ni+KCOi7JCww234pWXJPeejNsVyjKvwR4A6BpeFxQb4=;
	b=UYuZeGkeo2F95898Xoz/zw/rpVBlJMN4ispks0v3muw0o7q6btr3rBbXAWge9gapOw
	NDy8tDmvGCKoSDarDQttRjm/P2JfN/DyJCafSC9wP95h190pyiKHz7R178BnwVxoGC4t
	VRgkp9Q6AB+fg2C6cKE3bWUosytFJAAUS66Zs9DuFjaxUcb6KraL8NEAsStswGSxKRF3
	Tftt2FBHk4RYrxc+nPdYbOPmZEXlsKATo/YXfxJ913do7o1uGOEOs6OAT0+8WfLkA/M3
	/csrM7Safl9RLo0CccFQqKQlGfmNEPzVHgB4WE3zH71VgaHC+lPO1EENU5yPlN7Nj4ib
	OBKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ni+KCOi7JCww234pWXJPeejNsVyjKvwR4A6BpeFxQb4=;
	b=JyH05J3nyuxfVml2NfCe11HeaVxy6aXQceS3fkVXVkrHy6rtZf+aOr6H5kJbh4cisX
	yuFkGurC9pJcAAvKhAC0mxIw+O2Bn+J/+MYXB/ogkFYk5BRPvXavBl4vjQE2HJPweMYh
	yBXG1j/MrLY1rSBMg4CAgl2d8vI/8/sCPQO+cMX82ObbRlGgMnwn+Bq0ZRwSUIX0eIIG
	kKQWWdlJY/eGri81MXTUhv0qzwMoLrsm9QBx86bpVOdaaNMIiHleUhPIj3RyWbSDFTKg
	JW/nYLzlkOmWXqS2+q6xpf/x1fDNC8OJh/nSrvDBbs23O5IWIFWnfQ7jZzUQtPJgAubm
	zsfw==
X-Gm-Message-State: AHQUAuaotG03X2j0AVBehzN0VB008Ol7Agd1vQuJkUrE3xc7AO5gef82
	Ho2+beJ0sa6X+rQ/7R01+4Pb3rthHJUMSnvG2Hi0jfsS
X-Google-Smtp-Source: AHgI3IYNvhK2XTRSutXO2PXldsb9hB1SXXy//vOCT2y+7LlZj/xGXEntitI9cIdfcFFR7I7q/RMm6YAoimGR4I257l8=
X-Received: by 2002:a9d:3db4:: with SMTP id l49mr12325777otc.358.1549615281714;
	Fri, 08 Feb 2019 00:41:21 -0800 (PST)
MIME-Version: 1.0
References: <a9f7b0c1-97c9-7aea-1172-6de6cd673b46@guy-morand.ch>
	<3718150e-2dbf-dfaa-5b2e-3d5d0e97b8e6@guy-morand.ch>
In-Reply-To: <3718150e-2dbf-dfaa-5b2e-3d5d0e97b8e6@guy-morand.ch>
From: Fernando AE <fernando.ae2017@gmail.com>
Date: Fri, 8 Feb 2019 09:41:10 +0100
Message-ID: <CAK3Qp=WZ0vZhX5CiybMyPaVmfunwtmckS6sW6gLb4Qe-0JidpQ@mail.gmail.com>
To: Guy Morand <guy@guy-morand.ch>
Cc: yocto@lists.yoctoproject.org
Subject: Re: cmake / <string> no such file or directory ??!
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
X-List-Received-Date: Fri, 08 Feb 2019 08:41:23 -0000
Content-Type: text/plain; charset="UTF-8"

Hello Guy,I would also say that something is strange with the
"AUTOINC" in your file paths, unless you set a variable like that on
purpose.

Regards,
Fernando

On Tue, Feb 5, 2019 at 10:23 AM Guy Morand <guy@guy-morand.ch> wrote:
>
> Sorry Yocto developers!
>
> I have found the issue, in my CMakeLists.txt, I changed this:
> set(CMAKE_CXX_FLAGS "-Wall -Wextra -Werror")
>
> to this:
> set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -Werror")
>
> Now it works like a charm, stupid me :D! Sorry for all the noise!
>
> Best regards,
>
> Guy Morand
>
> On 2/5/19 8:21 AM, Guy Morand wrote:
>
> > Hello Yocto developpers!
> >
> > I'm facing a weird problem that seems very strange. I can
> > cross-compile a project based on cmake with the generated Yocto SDK.
> >
> > However, after adding a recipe, the compilation fails:
> > /mnt/ssd/yocto-build-script/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/communication-library/git-AUTOINC+f5cd493ce5-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-g++
> > -Dcommunication_interface_EXPORTS
> > -I/mnt/ssd/yocto-build-script/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/communication-library/git-AUTOINC+f5cd493ce5-r0/git/library
> > -Wall -Wextra -Werror -fPIC   -std=gnu++11 -MD -MT
> > CMakeFiles/communication-interface.dir/communication_interface.cpp.o
> > -MF
> > CMakeFiles/communication-interface.dir/communication_interface.cpp.o.d
> > -o
> > CMakeFiles/communication-interface.dir/communication_interface.cpp.o
> > -c
> > /mnt/ssd/yocto-build-script/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/communication-library/git-AUTOINC+f5cd493ce5-r0/git/communication_interface.cpp
> > | In file included from
> > /mnt/ssd/yocto-build-script/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/communication-library/git-AUTOINC+f5cd493ce5-r0/git/communication_interface.cpp:1:
> > |
> > /mnt/ssd/yocto-build-script/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/communication-library/git-AUTOINC+f5cd493ce5-r0/git/library/communication_interface.h:4:10:
> > fatal error: string: No such file or directory
> > |  #include <string>
> > |           ^~~~~~~~
> > | compilation terminated.
> >
> > I also tried to change the cmake generator to unix makefile (who knows
> > ...):
> > OECMAKE_GENERATOR = "Unix Makefiles"
> >
> > But I have the same issue. I am working on the thud branch. Anyone had
> > the same problem? What am I doing wrong?
> >
> > Best regards,
> >
> > Guy Morand
> >
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

