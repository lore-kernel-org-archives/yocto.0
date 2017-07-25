Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD39CE00C31; Tue, 25 Jul 2017 05:51:29 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F454E00C2B
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 05:51:28 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	25 Jul 2017 05:51:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,411,1496127600"; d="scan'208";a="130963357"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com) ([10.252.40.16])
	by fmsmga005.fm.intel.com with ESMTP; 25 Jul 2017 05:51:27 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Bacheh Karaji <bachehkaraji@yahoo.com>
Date: Tue, 25 Jul 2017 14:51:26 +0200
Message-ID: <4009821.MU8msZD8pZ@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <CAJTo0LaYHJNJKhgr0AnLAA7s6jC1BSz0KfkuwkXOUVkQWCbt3w@mail.gmail.com>
References: <1400955154.3545388.1500874019478.ref@mail.yahoo.com>
	<1400955154.3545388.1500874019478@mail.yahoo.com>
	<CAJTo0LaYHJNJKhgr0AnLAA7s6jC1BSz0KfkuwkXOUVkQWCbt3w@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How do I write a yocto/bitbake recipe to replace the default vsftpd.conf file with my own file?
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
X-List-Received-Date: Tue, 25 Jul 2017 12:51:29 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

FYI, "recipetool appendfile" can help you create this. See the 
"recipetool appendfile --help" output for details.

Cheers,
Paul

On Monday, 24 July 2017 11:27:17 AM CEST Burton, Ross wrote:
> The package that generates will conflict with the real one.
> 
> Write a bbappend for the recipe you want to replace the files in, add the
> files to SRC_URI, and use do_install_append() to overwrite the files in
> ${D}.
> 
> Ross
> 
> On 24 July 2017 at 06:26, Bacheh Karaji <bachehkaraji@yahoo.com> wrote:
> 
> > Hi,
> > I want to replace the default vsftpd.conf file with my own file!
> > My bitbake file looks following:
> >
> > bbexample_1.0.bb
> >     DESCRIPTION = "Configuration and extra files for TX28"
> >     LICENSE = "CLOSED"
> >     LIC_FILES_CHKSUM = ""
> >
> >     S = "${WORKDIR}"
> >
> >     SRC_URI += " \
> >         file://ld.so.conf \
> >         file://vsftpd.conf \
> >         file://nginx/nginx.conf \
> >         file://init.d/myscript.sh"
> >
> >     inherit allarch
> >
> >     do_install () {
> >         install -d ${D}${sysconfdir}
> >         install -d ${D}${sysconfdir}/nginx
> >         install -d ${D}${sysconfdir}/init.d
> >         rm -f ${D}${sysconfdir}/ld.so.conf
> >         rm -f ${D}${sysconfdir}/vsftpd.conf
> >         install -m 0755 ${WORKDIR}/ld.so.conf ${D}${sysconfdir}
> >         install -m 0755 ${WORKDIR}/vsftpd.conf ${D}${sysconfdir}
> >         install -m 0755 ${WORKDIR}/nginx/nginx.conf
> > ${D}${sysconfdir}/nginx/
> >         install -m 0755 ${WORKDIR}/init.d/myscript.sh
> > ${D}${sysconfdir}/init.d/
> >     }
> >
> >  But, the file could not be replaced!
> >  What is wrong?
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
> >
> 


-- 

Paul Eggleton
Intel Open Source Technology Centre

