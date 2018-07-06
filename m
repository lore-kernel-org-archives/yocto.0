Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68F03E01107; Thu,  5 Jul 2018 22:28:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEB66E00CEA
	for <yocto@yoctoproject.org>; Thu,  5 Jul 2018 22:28:47 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	05 Jul 2018 22:28:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,314,1526367600"; d="scan'208";a="64623097"
Received: from bachaue1-mobl.ger.corp.intel.com (HELO localhost.localdomain)
	([10.252.34.184])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jul 2018 22:28:44 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Robert Yang <liezhi.yang@windriver.com>
Date: Fri, 06 Jul 2018 17:28:43 +1200
Message-ID: <2811441.BFUunf07rL@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <10c336ff-c8cd-e961-5215-730dc6aaedd5@windriver.com>
References: <cover.1530569567.git.paul.eggleton@linux.intel.com>
	<d57ea952-26ab-ced5-2393-f625f9e9e095@windriver.com>
	<10c336ff-c8cd-e961-5215-730dc6aaedd5@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web][PATCH 5/7] update: ignore recommends when ordering layers
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
X-List-Received-Date: Fri, 06 Jul 2018 05:28:48 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert

On Wednesday, 4 July 2018 7:52:05 PM NZST you wrote:
> I'm sorry to say that I met layerindex' loaddata problems yesterday and
> today,
> I still didn't find the root cause. Have you tried dumpdata and loaddata
> recently, please ?
> 
> What I did was:
> 
> $ python3 manage.py dumpdata --settings settings --exclude=contenttypes 
> --exclude=auth.Permission --    exclude=corsheaders >dumped.json
> 
> On another environment:
> Setup database to sqlite3 in settings.py.
> $ python3 manage.py loaddata --settings settings dumped.json
> 
> The first problem I got was:
> [snip]
>    File 
> "/buildarea1/lyang1/layerindex-web/.venv/lib/python3.5/site-packages/reversion/revisions.py", 
> line 410, in _assert_registered
>      model=model,
> reversion.errors.RegistrationError: Problem installing fixture 
> '/buildarea1/lyang1/layerindex-web/dumped.json': <class 
> 'layerindex.models.Distro'> has not been registered with django-reversion
> [snip]
> 
> I think it is because we didn't use @reversion.register() for the class, so I 
> added them to layerindex/models.py, then I got other errors:
> 
> [snip]
>    File 
> "/buildarea1/lyang1/layerindex-web/.venv/lib/python3.5/site-packages/reversion/models.py", 
> line 272, in _local_field_dict
>      field_dict[field.attname] = getattr(obj, field.attname)
> AttributeError: Problem installing fixture 
> '/buildarea1/lyang1/layerindex-web/dumped.json': 'Branch' object has no 
> attribute 'layerbranch_id'

Hmm, that's odd. Branch shouldn't have layerbranch_id, it's the other way around - 
LayerBranch has a branch_id.

> I'm not sure what's wrong atm, need more investigations.
> 
> I need loaddata on my localhost to do development testing, so I can't start
> work on update.py until I fix the loaddata problem.

I have used loaddata and dumpdata here (a couple of times) but not recently.
I did not experience these issues before though. However these don't seem like 
issues that would have started as a result of this patchset (or indeed recent
changes, other than perhaps an upgrade of django-reversion), have you been 
using loaddata/dumpdata prior to this?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



