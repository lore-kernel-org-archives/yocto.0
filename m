Return-Path: <lsorense@csclub.uwaterloo.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11A33E00B7B; Wed,  5 Oct 2016 09:28:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from caffeine.csclub.uwaterloo.ca (caffeine.csclub.uwaterloo.ca
	[129.97.134.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DABB3E00AB6
	for <yocto@yoctoproject.org>; Wed,  5 Oct 2016 09:28:29 -0700 (PDT)
Received: by caffeine.csclub.uwaterloo.ca (Postfix, from userid 20367)
	id 46BBFC025E; Wed,  5 Oct 2016 12:28:28 -0400 (EDT)
Date: Wed, 5 Oct 2016 12:28:28 -0400
To: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
Message-ID: <20161005162828.GB2084@csclub.uwaterloo.ca>
References: <D6696459-1F17-4F52-8D0A-4ED8C3FC35EE@cisco.com>
	<15215572.tG9QIyjkit@peggleto-mobl.ger.corp.intel.com>
	<4EBFFDF8-32F2-48C0-A456-DB9A9A4D3841@cisco.com>
	<1722958.a5vgrEO2cN@peggleto-mobl.ger.corp.intel.com>
	<CAMKF1soSLUCxQvf0fgKotA+Tvahs8jKZGOZ7AuB8=_9x3ZW+Gw@mail.gmail.com>
	<2BBD728A-8CAF-4A2F-9F04-4BDD540B88C6@cisco.com>
MIME-Version: 1.0
In-Reply-To: <2BBD728A-8CAF-4A2F-9F04-4BDD540B88C6@cisco.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
From: lsorense@csclub.uwaterloo.ca (Lennart Sorensen)
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Question: xxxx listed in PACKAGES multiple times, this leads to packaging errors
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
X-List-Received-Date: Wed, 05 Oct 2016 16:28:33 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Wed, Oct 05, 2016 at 04:10:01PM +0000, Dinh Nguyen (dinhn) wrote:
> >>> I wonder why do we want to override default PACKAGES here. If we can leave that alone things would work out on its own.
> 
> I did remove the PACKAGES setting in my .bb — so all default packages were built. But still having some other issue as stated in other emails.
> 
> Thanks Khem.
>   —Dinh
> 
> 
> 
> On 10/5/16, 8:34 AM, "Khem Raj" <raj.khem@gmail.com> wrote:
> 
> >I wonder why do we want to override default PACKAGES here. If we can leave
> >that alone things would work out on its own.
> >
> >On Tue, Oct 4, 2016 at 11:55 PM, Paul Eggleton
> ><paul.eggleton@linux.intel.com> wrote:
> >> On Wed, 05 Oct 2016 05:12:27 Dinh Nguyen wrote:
> >>> Thanks much Paul.
> >>>
> >>> >>>> PACKAGES = "${PN}" should work
> >>>
> >>> It solved the early error “ c-mlib listed in PACKAGES multiple times, this
> >>> leads to packaging errors” — Thanks again.
> >>>
> >>>
> >>> But running into other issue. Below is my do_install
> >>>
> >>> do_install () {
> >>>       oe_runmake all

Is that doing a compile in the install target?

-- 
Len Sorensen

