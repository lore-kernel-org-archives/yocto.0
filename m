Return-Path: <olivier.sobrie@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9D62E00AE4; Tue, 25 Apr 2017 04:58:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDBB0E00A9B
	for <yocto@yoctoproject.org>; Tue, 25 Apr 2017 04:58:43 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id d79so24451905wmi.2
	for <yocto@yoctoproject.org>; Tue, 25 Apr 2017 04:58:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=sender:date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=2AjCQFuhyuEuWaT2m7onYCL6DXt3XlQH2nXpX627rJk=;
	b=rXXXwTa0jeY4Q3ZbOJxGm4H4iA3THD6H08sJBL/hGTgexp3FvTrgh/uACpv0c0pFIW
	K44LjicJRNBO1fwefep33szeV62dwvcnacW8uOEmhssWE3WnmUWChCwRGMzjPnqc1K2P
	1VVD3E3Q33P2XpnXMiPvK+8264OCc5Skag75VhrvsY2nnwEjtHF5JCEXAJRAgn7R6dmS
	v9wkeVPzucTOKl7yzLhae2+UtzHlA5yvQUpH+S589hgncuqUMVbEOR2Ncj3onNXTMd0L
	kPVeuPn6ycPXRUXTP0Jc3uwh9EpaYA6GQV3uktZcKjlKLqyj59Qo9E5I+1VWsKX6dEEE
	79gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
	:references:mime-version:content-disposition:in-reply-to:user-agent;
	bh=2AjCQFuhyuEuWaT2m7onYCL6DXt3XlQH2nXpX627rJk=;
	b=NOv/4EI37BFK27wOKNa8lTLeeyKByvA4OhJxphQafZSGrMe7BnnB302kmkv/VMzAVE
	NidUG7TzPrxqIXaffGONFL8FJnIzEcr2edKECq+mSvConULfq3lq/b60bSRnv82ai7hD
	5NfhLLUT+kEFuDdfrQn7oZ5XPdM3YEY8049cjcnIN/bGAslTCJafo/+eXLtUP5PDDbPe
	OW2Ni6Pyo4/loMyTKQKx1DLh5pF0xxSFCl/nlm/zy5S6Mg+avgVmqJPoRXPqd49RZCh+
	/6/nzs9PsQ93hg2EHJT91HXyuaRjxK/81JFoj9KBPlsoMfKQ1MRV0RZ7+m9sHp1Wexab
	cKBQ==
X-Gm-Message-State: AN3rC/5tqmGIsZATPo3xiX6oiq+51Zxlp+rp864ffrYnA9Juw4cyQ6U6
	u5A/BcQLwn2+xA==
X-Received: by 10.28.92.84 with SMTP id q81mr5457798wmb.11.1493121522815;
	Tue, 25 Apr 2017 04:58:42 -0700 (PDT)
Received: from localhost ([2a02:a03f:308a:7800:fcda:183d:f9b7:b5e])
	by smtp.gmail.com with ESMTPSA id
	92sm26005269wra.18.2017.04.25.04.58.41
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 25 Apr 2017 04:58:41 -0700 (PDT)
Sender: Olivier Sobrie <olivier.sobrie@gmail.com>
Date: Tue, 25 Apr 2017 13:58:43 +0200
From: Olivier Sobrie <olivier@sobrie.be>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <20170425115843.GA11697@ultraoso.localdomain>
References: <20170425090958.11054-1-olivier@sobrie.be>
	<f1202f15-5734-cca6-fd84-5244efe0cbee@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <f1202f15-5734-cca6-fd84-5244efe0cbee@linux.intel.com>
User-Agent: Mutt/1.8.2 (2017-04-18)
Cc: paul.eggleton@linux.intel.com, yocto@yoctoproject.org
Subject: Re: [PATCH] nativesdk-qt4-tools: fix build issues with libQtDBus and libQt3Support
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
X-List-Received-Date: Tue, 25 Apr 2017 11:58:44 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Apr 25, 2017 at 01:58:25PM +0300, Alexander Kanavin wrote:
> On 04/25/2017 12:09 PM, Olivier Sobrie wrote:
> 
> > This patch ensures that libQtXml is build before libQtDBus and that
> > both libQtGui and libQtNetwork are built before libQt3Support.
> 
> Applied, thanks. Please add a [meta-qt4] to the subject, so that it's easier
> to see which layer the patch is intended for.

OK, noted!
Thanks,

Olivier

