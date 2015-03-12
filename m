Return-Path: <benjamin.esquivel@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DFB2E00858; Thu, 12 Mar 2015 08:53:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E8F7E0083A;
	Thu, 12 Mar 2015 08:53:30 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP; 12 Mar 2015 08:53:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,389,1422950400"; d="scan'208";a="539995709"
Received: from besquive-mobl.zpn.intel.com (HELO [10.219.4.51]) ([10.219.4.51])
	by orsmga003.jf.intel.com with ESMTP; 12 Mar 2015 08:52:46 -0700
Message-ID: <1426175606.12716.5.camel@besquive-mobl.amr.corp.intel.com>
From: Benjamin Esquivel <benjamin.esquivel@linux.intel.com>
To: Priya Agarwal <priya_agarwal@students.iitmandi.ac.in>
Date: Thu, 12 Mar 2015 09:53:26 -0600
In-Reply-To: <CALTPfpHK3-q9Xdv-ff_vgP7suRXuSzXEQVNq2wnbPj6hrosvdg@mail.gmail.com>
References: <CALTPfpHK3-q9Xdv-ff_vgP7suRXuSzXEQVNq2wnbPj6hrosvdg@mail.gmail.com>
Organization: Intel OTC
X-Mailer: Evolution 3.10.4 (3.10.4-4.fc20) 
Mime-Version: 1.0
Cc: "yocto-builds@yoctoproject.org" <yocto-builds@yoctoproject.org>,
	yocto@yoctoproject.org
Subject: Re: Linking of external libraries in the recipe
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: benjamin.esquivel@linux.intel.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 12 Mar 2015 15:53:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2015-03-12 at 18:00 +0530, Priya Agarwal wrote:
> Hello,
> 
> 
> I have taken a recipe for the package squid from OpenEmbedded.org and
> have built it along with the kernel image. 
> 
> 
> Now I want to edit its recipe so that it will include some external
> libraries.
> But these libraries are the ones that are generated during the build.
> So how do I edit the recipe to include those libraries?
> 
Hi Priya, if you want to use a recipe and make some modifications to
it's behavior it is recommended that you do it via a .bbappend file

http://www.yoctoproject.org/docs/1.7.1/dev-manual/dev-manual.html#using-bbappend-files

If the libraries are already generated during the build it might be a
case where you just DEPENDS_append = " <libraryproviderpackage>" at
the .bbappend file. When the dependiencies are resolved prior your
recipe is built, the headers and libraries are placed in a special part
of the working directory that the recipes know where to look for (if
they don't deviate of the standard, of course). 

> 
> Location of
> library:  ../yocto/<build-directory>/............/libusdpaa.a
> 
> 
> 
> currently the do_compile task is failing as I have used an extra
> function whose library I haven't included. Snippet of the error:
> 
> | main.cc: In function 'int SquidMainSafe(int, char**)':
> | main.cc:1259:10: error: 'of_init' was not declared in this scope
> | make[3]: *** [main.o] Error 1
> | make[3]: *** Waiting for unfinished jobs....
> | make[3]: Leaving directory
> `/media/NewVolume/yocto/build_t4240qds_release/tmp/work/ppce6500-fsl_networking-linux/squid/3.4.7-r0/squid-3.4.7/src'
> | make[2]: *** [all-recursive] Error 1
> | make[2]: Leaving directory
> `/media/NewVolume/yocto/build_t4240qds_release/tmp/work/ppce6500-fsl_networking-linux/squid/3.4.7-r0/squid-3.4.7/src'
> | make[1]: *** [all] Error 2
> | make[1]: Leaving directory
> `/media/NewVolume/yocto/build_t4240qds_release/tmp/work/ppce6500-fsl_networking-linux/squid/3.4.7-r0/squid-3.4.7/src'
> | make: *** [all-recursive] Error 1
> | ERROR: oe_runmake failed
> | ERROR: Function failed: do_compile
> (see /media/NewVolume/yocto/build_t4240qds_release/tmp/work/ppce6500-fsl_networking-linux/squid/3.4.7-r0/temp/log.do_compile.28810 for further information)
> ERROR: Task 799
> (/media/NewVolume/yocto/meta-oe/meta-networking/recipes-daemons/squid/squid_3.4.7.bb, do_compile) failed with exit code '1'
> 
> 
> I have attached my recipe.
> 
> 
> 



