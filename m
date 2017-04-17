Return-Path: <fabien.lahoudere@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85048E00546; Sun, 16 Apr 2017 23:48:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7DB6E003E1
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 23:48:03 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aragua) with ESMTPSA id 98763260744
Message-ID: <1492411679.15749.5.camel@collabora.co.uk>
From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
To: yocto@yoctoproject.org
Date: Mon, 17 Apr 2017 08:47:59 +0200
In-Reply-To: <CAOsmwBQMSkHdK+JCmiSoT_g9hgeGo2x_wUOrrT+5aJuoW4BWng@mail.gmail.com>
References: <CAOsmwBQMSkHdK+JCmiSoT_g9hgeGo2x_wUOrrT+5aJuoW4BWng@mail.gmail.com>
X-Mailer: Evolution 3.22.5-1 
Mime-Version: 1.0
Subject: Re: Symbolic link to ld-linux-armhf.so.3
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
X-List-Received-Date: Mon, 17 Apr 2017 06:48:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Sat, 2017-04-15 at 20:47 +0200, Alvaro Garcia wrote:
> Hi, I made a recipe for hamachi. Hamachi looks for /lib/ld-linux.so.3 but in my poky build this
> file is /lib/ld-linux-armhf.so.3.
> 
> If I do ln -s /lib/ld-linux-armhf.so.3 /lib/ld-linux.so.3 hamachi runs fine so the solution its
> just a symbolic link. My problem is that I cant make this link from my recipe.
> 
> Into my do_install I do: ln -s /lib/ld-linux-armhf.so.3 ${D}/lib/ld-linux.so.3
> But later it does not exist in the rootfs. But if I do:
> ln -sf/lib/ld-linux-armhf.so.3 ${D}/lib/MYPRETTYLIB
> then the link "MYPRETTYLIB" is there. Its like "ld-linux.so.3" is forbidden for some reason.
> 
> I read that some guy had this problem and solved it by using a glibc bbappend but it didnt work
> for me.
> 
> Do I need to do something special to get the "ld-linux.so.3" link?
> 

As Khem Raj said in a previous discussion:
"
    that may not be enough. .so are treated as symlinks and shoved into
    -dev packages by default. if you need unversioned libraries then you
    have to let the system know that its not a dev library symlink

    FILES_${PN} += "${libdir}/*.so"
    FILES_SOLIBSDEV = ""
    INSANE_SKIP_${PN} += "dev-so"
"

> Thank you

