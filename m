Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26FE5E00AF0; Tue, 11 Apr 2017 06:30:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [212.227.126.133 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [212.227.126.133 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.133])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B683E00AD5
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 06:30:10 -0700 (PDT)
Received: from oxbaltgw12.schlund.de ([172.19.246.18]) by
	mrelayeu.kundenserver.de (mreue001 [212.227.15.163]) with ESMTPSA
	(Nemesis) id 0MVV8g-1cZ7r449Z0-00YmFM for <yocto@yoctoproject.org>;
	Tue, 11 Apr 2017 15:30:09 +0200
Date: Tue, 11 Apr 2017 14:30:08 +0100 (BST)
From: Colin Helliwell <colin.helliwell@ln-systems.com>
To: yocto@yoctoproject.org
Message-ID: <1299191699.201729.1491917408902@email.1and1.co.uk>
In-Reply-To: <14a7f797-fc4f-772a-27de-a8c6d2f3980c@linux.intel.com>
References: <015601d2af95$84d316a0$8e7943e0$@ln-systems.com>
	<14a7f797-fc4f-772a-27de-a8c6d2f3980c@linux.intel.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.1-Rev32
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K0:fbFCc55FdUmynU37Tjc3Fj3q5jBH0NjcHFFTJjPFi5qaeBg3ZSz
	HlSENhhiyVDDvqrt0aFXTrMBOiIGTNFolkVI7RiuHJuYsTCl1GFPc7Mfdl3EPLoi+6VDU8a
	OvlO9nVwSjfZ7RGdFxWWrxqdQnvzsU6Kw/kBZuQx5GNucNWHcg0gTdJdEL2wVOn8ckH8wYD
	dF1t6+JbdnHl8lUv8hiYw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:p2rYAOebUqA=:4RTfeng9EXD8SburqIQrNv
	a6GhSgyhBEC0e962CBHMx+s+Br8G875Zwy4yGqU9DhBbquKPKulw5RyRteFO6GjaXnab6xuXf
	BhXMOD+YwSdmrPMg4JzzXlneSmzYEKkAndQ8deA82n9vzN+suboWmjoWbcQ0cE2rHjsOTKVWR
	oqc24RYnJ+8JcbO/YV6Bi95Bdj3XyQB62SP2D9b8aYdCftWfjIIs/xer0ATGAJGtHIvwDf7om
	8teh4ahH3dhOlUzLP62UIBvJv5Nn0q52mp7IzxcLMXtk3ZczMfojXuLUQfgSJ3I785v/Ddqio
	YJTRs1yFznWQmQRRqOBTvvoXT6j8bx4Am972iQBDr/Nc+P44DLR2vpmPNxdTTJv1pkRLY6wD/
	N+++aXobhFtmJOn4eTrUnhioRBFrwbQeXSE5IstEKviZJ0rFgeChy2+IBIcpgEPEUvSsCeZ33
	6ACz74G0+uwaybX3K14xv41ueSgbtjv9wiV+aBp/byM+hYzWakwLhFJMOtMErtY0nWRaUUr2W
	GfZkByxrZS1HiR5qA7PuqfEI6v8TXtTVsSPFMsKlET57yffgGhJNVuKRT899rw95HYX0zConk
	DUh5FFW8MSGHXAhutdNVRf5fcZuKdf4kRjXRtiJLvLc8LPegDrqs/6zob/5RreSQKMvjmBDKK
	lYdsKGlIB1Yl6CPAhEVMOxpcMH7xPhdIaqJcvaP7eTlee1h+wfMB6VndJAwDo/Cp2jr7HCP8V
	74AE0TxUBkSspmOZ
Subject: Re: Remove/prevent a package's installed files if another package present
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Colin Helliwell <colin.helliwell@ln-systems.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 11 Apr 2017 13:30:13 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


> On 07 April 2017 at 12:57 Alexander Kanavin <alexander.kanavin@linux.intel.com> wrote:
> 
> On 04/07/2017 02:53 PM, colin.helliwell@ln-systems.com wrote:
> 
> > I'd like to do a mod to my ppp recipe such that ip-up & ip-down aren't
> > installed if another package is in the image recipe i.e. set in
> > CORE_IMAGE_EXTRA_INSTALL.
> > 
> > I guess I could do a do_install_append() or a pkg_postinst_(), but is there
> > a way to detect the other package within the recipe? E.g. along the lines of
> > what PACKAGE_CONF can do for configuration.
> > 
> > Oh, and it needs to work after an update (e.g. rpm/deb) - don't want the
> > files (re)installed by the update. (So I don't believe
> > ROOTFS_POSTPROCESS_COMMAND is an option)
> 
> Maybe you should do this at runtime, and modify ip-up/down themselves
> (or the thing that utilizes them) so that they do the right thing in
> both scenarios.
> 

Worried about complexities of runtime mods (esp. across two other packages). What seems may be a 'simple' (if not weakness-less) method is to add my own DISTRO_FEATURE, and switch on that in my ppp_.bbappend.

