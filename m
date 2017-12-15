Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FC76E00E85; Fri, 15 Dec 2017 06:46:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.133 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.133])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5212CE00D7B
	for <yocto@yoctoproject.org>; Fri, 15 Dec 2017 06:46:55 -0800 (PST)
Received: from null ([172.19.246.17]) by mrelayeu.kundenserver.de (mreue007
	[212.227.15.163]) with ESMTPSA (Nemesis) id 0LtypG-1f8Ags2K2g-011UBE;
	Fri, 15 Dec 2017 15:46:52 +0100
Date: Fri, 15 Dec 2017 14:46:51 +0000 (GMT)
From: Colin Helliwell <colin.helliwell@ln-systems.com>
To: Philip Balister <philip@balister.org>, yocto@yoctoproject.org
Message-ID: <322759692.325668.1513349211774@email.1and1.co.uk>
In-Reply-To: <127a4a89-0e6b-2da3-748e-43511d57799f@balister.org>
References: <02f301d375a9$aa394880$feabd980$@ln-systems.com>
	<127a4a89-0e6b-2da3-748e-43511d57799f@balister.org>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.4-Rev18
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K0:upflgOyoYI9jH5/CBv/zwoBeYCp/+n8M3B6h1QJ3G3jI5tQJ6SZ
	Oas76FSSec/MGK2tT4AE88Mjgrh8Whl61GpnmJlFUPDDnt61hFbHYCjHA6JiyQE0PDtuLDO
	xTjrGm9nG5URTcPcHeyg6MYuYAn1W1zdEfpIG6qOU8GZoP2FbuPZ/O2eVYF8hE3jjOgBaHS
	PCDFOoK4Ip5nM92sLgEAA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:XrIoIB40KHo=:XuA2m5FAMY9J2eq0/2VFq8
	NTfxaHMWDtOvWIsBIwoXw4mXchVg4utvLDPQVcpivXRlVVlqx4mRxf+ZTd4imrfK+rdT8sSVu
	HQqjoJjOhCEhetbe/f+5kSaQn10/4/S/rwlAOtU5kxig2mAdJPxcjP7Y4N55+LrDIy/XN93vX
	QJrlOf/5TDI3AfeozWQNN4DeCqIWski4q4hslM1Mz/2esX3N68egdp2KR/YI1eLzE7334n2Eo
	nnbXmglgpPmQ90D625hcDe8q2GdDXz1CWldrxJVVAJ6yYURueuJ85xJ3CuqLPDNvJV1ctforC
	hxMzLauVwBajocapfXhmHsZchNiiDJ/bToRxXZDDYab9tlTdkLvv3JjHKce27fE+gLzK7GpS7
	Btka7BJXHskNs1PrgEqPGpx845Xcp4THwxufoitYi4hREMLHAuppaITEMPWE5+7RIlhJK/+ru
	Yjm8e5ZPeI1czNAYXPKmDosxa87jR4Zd3m188Z9xyT+z8ijUn4shFK+BBY26wgliGplikVIP9
	CXXe6K7eQK9WHiyCICnRLDRKDCv2FMgNjfkTTOR5OSOTSzf1420hUB9qfkydEo20QFeHbvzSu
	m9aj2YamJRUHP+t5WGJ+Fv5oU92Pi7whfUuQiK+2pVM1/bG7oIniNcCe3WNW4x0lxpe7nSTPb
	ZPd4jPaB4sro5VN49Cebahkhk7X/XNUUsVyT2q03h6fLJYRuWlKpj/4hD87GgGSyuDR7k4eyP
	MJWAsP4XF3CfkiPTeXRPxGKUYPwL7y9Yl8EjYz6v7ESc87IrqeiThCL04kI=
Subject: Re: Using a poky recipe's files in a custom recipe
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
X-List-Received-Date: Fri, 15 Dec 2017 14:46:57 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


> On 15 December 2017 at 14:35 Philip Balister wrote:
> 
> 
> On 12/15/2017 08:36 AM, colin.helliwell@ln-systems.com wrote:
> > The current Poky I'm using (krogoth) has a recipe for dropbear, but I want
> > to upgrade to use the latest version of dropbear.
> > For source control reasons, I don't want to modify what's in
> > meta/recipes-core/dropbear and therefore want to have my own recipe in my
> > own layer. Yet for cleanliness I'd also prefer not to have to replicate all
> > its .inc file etc in my own layer.
> > Is there a clean way to be able to include meta's files within my own
> > recipe? Is it a case of some sort of FILESEXTRAPATHS entry, and what would
> > be the best way to cross reference to the poky layer?
> 
> I'm thinking if you
> 
> require recipes-core/dropbear/dropbear.inc
> 
> it uses BBPATH to search for the inc file, so it will pick up the one in
> meta.
> 

Excellent. Many thanks, Philip - that's got it.

