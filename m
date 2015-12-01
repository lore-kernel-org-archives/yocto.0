Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13AEDE00AE4; Tue,  1 Dec 2015 08:56:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFE94E00ADD
	for <yocto@yoctoproject.org>; Tue,  1 Dec 2015 08:56:41 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 01 Dec 2015 08:56:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,369,1444719600"; d="scan'208";a="851558303"
Received: from hlim3-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.139.190])
	by fmsmga001.fm.intel.com with ESMTP; 01 Dec 2015 08:56:24 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Caio <caiortp@gmail.com>
Date: Wed, 02 Dec 2015 05:56:22 +1300
Message-ID: <7211338.biJDk4bQH6@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.2.6-301.fc23.x86_64; KDE/4.14.14; x86_64; ;
	)
In-Reply-To: <CAJqtCyZWnGCqp4x8JSbVbj-ZhkCi_UXJ5OpmUdvn6cP-wRjnEA@mail.gmail.com>
References: <CAJqtCybKFSzf2uhe3ox7LTExCOF+KGNGRHL_hecz6LipTKNmug@mail.gmail.com>
	<2180797.fvhLvehB0f@peggleto-mobl.ger.corp.intel.com>
	<CAJqtCyZWnGCqp4x8JSbVbj-ZhkCi_UXJ5OpmUdvn6cP-wRjnEA@mail.gmail.com>
MIME-Version: 1.0
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Help with Opensips Recipe - QA run found fatal errors
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
X-List-Received-Date: Tue, 01 Dec 2015 16:56:43 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Caio,

compile-host-path isn't about the path being different - it's about the path 
being something possibly bad i.e. on the host system. You really ought to fix 
that one rather than disable it.

Cheers,
Paul

On Tue, 01 Dec 2015 10:21:03 Caio wrote:
> Hi Paul,
> 
> Thank you very much for your help.
> I added INSANE_SKIP_${PN} += " libdir compile-host-path" because the
> instalation is different from /usr/lib.
> 
> Thank you very much!
> 
> Regards,
> 
> Caio Pereira
> 
> 2015-11-25 20:26 GMT-02:00 Paul Eggleton <paul.eggleton@linux.intel.com>:
> > Hi Caio,
> > 
> > On Tuesday 24 November 2015 11:48:13 Caio wrote:
> > > I'm writing a recipe to a Sip proxy Opensips, but I'm having problems
> > 
> > with
> > 
> > > QA Issues.
> > > In the First time I tried to use make install from Opensips Makefile I
> > 
> > had
> > 
> > > problem with QA Issues,  so I added all the folders to FILES_${PN} and
> > > FILES_${PN} but I still having problem.
> > > 
> > > So I decided to start small, creating the folder structure and copy only
> > > the binary files and after I will copy all the files using the
> > 
> > do_install
> > 
> > > function.
> > > 
> > > But when I added the folders and I started to have problems with QA
> > 
> > again.
> > 
> > > FILES_${PN} = " \
> > > 
> > >         ${sbindir}/* \
> > >         ${sysconfdir}/* \
> > >         ${sysconfdir}/opensips/* \
> > >         ${libdir}/* \
> > >         ${libdir}/opensips/* \
> > >         ${libdir}/opensips/modules/* \
> > >         "
> > > 
> > > Someone could help me with this problem?
> > > 
> > > 
> > > Thank you very much
> > > 
> > > Best Regards,
> > > 
> > > Caio Pereira
> > > 
> > > 
> > > ERROR: QA Issue: opensips: The compile log indicates that host include
> > > and/or library paths were used.
> > > 
> > >          Please check the log
> > 
> > '/home/icchw/fsl-community-bsp/small_steps/tmp/work/armv7at2hf-vfp-neon-po
> > ky> 
> > > -linux-gnueabi/opensips/2.2.0-r0/temp/log.do_compile' for more
> > 
> > information.
> > 
> > > [compile-host-path]
> > > 
> > > 
> > > ERROR: QA run found fatal errors. Please consider fixing them.
> > > ERROR: Function failed: do_package_qa
> > 
> > > ERROR: Logfile of failure stored in:
> > /home/icchw/fsl-community-bsp/small_steps/tmp/work/armv7at2hf-vfp-neon-pok
> > y-> 
> > > linux-gnueabi/opensips/2.2.0-r0/temp/log.do_package_qa.30973 ERROR: Task
> > 
> > 9
> > 
> > (/home/icchw/fsl-community-bsp/sources/icchw/meta-caio/recipes-telephony/o
> > pe> 
> > > nsips/ opensips_2.2.0.bb, do_package_qa) failed with exit code '1'
> > > 
> > > 
> > > cat
> > 
> > /home/icchw/fsl-community-bsp/small_steps/tmp/work/armv7at2hf-vfp-neon-pok
> > y-> 
> > > linux-gnueabi/opensips/2.2.0-r0/temp/log.do_package_qa.30973
> > > 
> > > DEBUG: Python function read_subpackage_metadata finished
> > > ERROR: QA Issue: opensips: The compile log indicates that host include
> > > and/or library paths were used.
> > > 
> > >          Please check the log
> > 
> > '/home/icchw/fsl-community-bsp/small_steps/tmp/work/armv7at2hf-vfp-neon-po
> > ky> 
> > > -linux-gnueabi/opensips/2.2.0-r0/temp/log.do_compile' for more
> > 
> > information.
> > 
> > > [compile-host-path]
> > 
> > Did you check the mentioned compile log?
> > 
> > FYI a good reference for these QA checks is:
> > 
> > 
> > http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#qa-err
> > ors-and-warnings
> > 
> > As mentioned there you should find somewhere in that log "is unsafe for
> > cross-compilation" or "CROSS COMPILE Badness".
> > 
> > Cheers,
> > Paul
> > 
> > --
> > 
> > Paul Eggleton
> > Intel Open Source Technology Centre

-- 

Paul Eggleton
Intel Open Source Technology Centre

