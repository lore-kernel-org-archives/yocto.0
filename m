Return-Path: <jrswdnan22@snkmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B8C4E00C06; Mon, 29 Oct 2018 05:34:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [62.142.5.107 listed in list.dnswl.org]
X-Greylist: delayed 455 seconds by postgrey-1.32 at yocto-www;
	Mon, 29 Oct 2018 05:34:08 PDT
Received: from emh01.mail.saunalahti.fi (emh01.mail.saunalahti.fi
	[62.142.5.107])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA459E00872
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 05:34:08 -0700 (PDT)
Received: from uwe1 (unknown [193.65.204.42])
	by emh01.mail.saunalahti.fi (Postfix) with ESMTP id 88354200DA;
	Mon, 29 Oct 2018 14:26:32 +0200 (EET)
From: Uwe Geuder <jrswdnan22@snkmail.com>
To: yocto@yoctoproject.org
In-Reply-To: <CAK4Yt2m7sqkaedLj4_hdsLn+WuDHaWZkUkZF6cJBijBrZLOZmQ@mail.gmail.com>
References: <CAK4Yt2m7sqkaedLj4_hdsLn+WuDHaWZkUkZF6cJBijBrZLOZmQ@mail.gmail.com>
Date: Mon, 29 Oct 2018 14:26:32 +0200
Message-ID: <87zhuxj5vr.fsf@snkmail.com>
MIME-Version: 1.0
Subject: Re: adding own shell script
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
X-List-Received-Date: Mon, 29 Oct 2018 12:34:12 -0000
Content-Type: text/plain

On Mon, Oct 29, 2018 at 11:51 AM Zolee K zoleelikesdebian-at-gmail.com wrote:
> 
> I'd like to install my own test.sh script into the image, I created this
> recipe file, however I dont know how to have bitbake put the my test.sh
> into /etc folder
> 
> SUMMARY = "test.sh"
> LICENSE = "Z"
> 
> SRC_URI = "\
>         file://test.sh \
> "
>
> do_configure(){
>  :
> }
>
> do_compile() {
>  :
> }
> 
> 
> do_install() {
>    install -d ${D}${sysconfdir}
>    install -m 0770 ${WORKDIR}/test.sh ${D}${sysconfdir}/test.sh
> }

At least at the first glimpse this recipe looks to me like it might
work. (Executable code does not belong under /etc, but that is a
different issue)

However, bitbake will execute the tasks in the recipe only if they
are pulled in, i. e. some part of your image depends on the package
created. There are always many recipes in the layers of a Yocto based
project, but only those tasks which are really needed will be executed.

There are 2 ways to create the dependency

a.) directly into the image

https://www.yoctoproject.org/docs/2.5.1/mega-manual/mega-manual.html#var-IMAGE_INSTALL
https://www.yoctoproject.org/docs/2.5.1/mega-manual/mega-manual.html#var-PACKAGE_INSTALL

b.) indirectly by making some package already in your image runtime-depend on
your new package

https://www.yoctoproject.org/docs/2.5.1/mega-manual/mega-manual.html#var-RDEPENDS


Regards,

Uwe Geuder
Neuro Event Labs Oy
Tampere, Finland
uwe.gexder at neuroeventlabs.com (Bot check: fix one obvious typo)

