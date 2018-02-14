Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83A53E00E5E; Wed, 14 Feb 2018 13:10:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5D5EE007E1
	for <yocto@yoctoproject.org>; Wed, 14 Feb 2018 13:10:05 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w1ELA28Z002722
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 14 Feb 2018 13:10:02 -0800 (PST)
Received: from msp-dhcp40.wrs.com (172.25.34.40) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Wed, 14 Feb 2018 13:09:48 -0800
To: Jeff Osier-Mixon <jefro@jefro.net>, Jean-Pierre Sainfeld
	<jean-pierre@anki.com>
References: <CAEv37YucHQ7Oa8YzngU0kQOKrMBEez1_udeAcWqrX7D4-C6jmg@mail.gmail.com>
	<CA+YB3rZST=NZTGC14w1_wD9t5bYH+_Z5dv-ApBwt=CLbO4BrMw@mail.gmail.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <42fc1f72-7c6b-e9c3-bbe3-882246a610d1@windriver.com>
Date: Wed, 14 Feb 2018 15:09:57 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
	Gecko/20100101 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <CA+YB3rZST=NZTGC14w1_wD9t5bYH+_Z5dv-ApBwt=CLbO4BrMw@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: useradd-example.bb
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
X-List-Received-Date: Wed, 14 Feb 2018 21:10:06 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 2/14/18 2:57 PM, Jeff Osier-Mixon wrote:
> Can anyone help Jean-Pierre? This seems at first like a simple issue during
> do_populate.

Need more information.  Are you creating new users and putting files in those
user directories in /usr/share or elsewhere?

The /usr/share hierarchy is controlled by the system wide fs-perms.  Many of
it's standard subdirectories will globally set all subdirectories become
root:root 0755, while files become 0644 root:root.

See the fs-perms.txt file: meta/files/fs-perms.txt

Pay specific attention to the comment:

# Note: all standard config directories are automatically assigned "0755 root
root false - - -"

'standard config directories' refer to the following list:

(from classes/package.bbclass)
    # By default all of the standard directories specified in
    # bitbake.conf will get 0755 root:root.
    target_path_vars = [    'base_prefix',
                'prefix',
                'exec_prefix',
                'base_bindir',
                'base_sbindir',
                'base_libdir',
                'datadir',
                'sysconfdir',
                'servicedir',
                'sharedstatedir',
                'localstatedir',
                'infodir',
                'mandir',
                'docdir',
                'bindir',
                'sbindir',
                'libexecdir',
                'libdir',
                'includedir',
                'oldincludedir' ]


> On Tue, Feb 13, 2018 at 1:32 PM, Jean-Pierre Sainfeld <jean-pierre@anki.com
> <mailto:jean-pierre@anki.com>> wrote:
> 
>     Hi,
>     I am working on yocto system at the jethro rev level. 
>     I am looking to use the meta-skeleton useradd-example.bb
>     <http://useradd-example.bb> recipe
>     So far I have been successful in adding the required users and group 
>     and creating files in the /usr/share directory 
>     The current issue I am facing is the ownership of the created file 
>     I see the right permissions at the do_install() time 
>     however when the image is loaded in the target 
>     those files are reverted to the root:root permissions 
> 
>     The requirement of our platform is that we can create specific users and 
>     make some specific processes  and data files having the proper uid and ueid.
> 
>     I have been able to do all this successfully on the target 
>     but not through the yocto build system 
> 
>     Any assistance in this regard would be fantastic and very cool :-)
> 
> 
> 
>     -- 
>     Jean-Pierre Sainfeld
>     408-508-1741 <tel:(408)%20508-1741>
> 
>     --
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>     <https://lists.yoctoproject.org/listinfo/yocto>
> 
> 
> 
> 
> -- 
> Jeff Osier-Mixon - Open Source Community Manager, Intel Corporation
> 
> 


