Return-Path: <kbassford@apertussolutions.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3457AE00A9B; Thu, 27 Sep 2018 05:57:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [135.84.80.216 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from sender-of-o51.zoho.com (sender-of-o51.zoho.com [135.84.80.216])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20424E0097D
	for <yocto@yoctoproject.org>; Thu, 27 Sep 2018 05:57:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538053034; cv=none; d=zoho.com; s=zohoarc; 
	b=Pp/46iloyrdw+V0HQ8eRJST6F7V4X+XNchj9p5u3XVHOxu7ljUZX+RCnekgfGXRg5PkMO0tX372Hv0SqWq82mTqVL2gpf/uCFVUOvcz2yza/tuEtvIcLOlSBvx9ugKIxShyaGAEnP/BX6KWb5DfSWyYyrsCgqGsyeaxcUpgnZNM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com;
	s=zohoarc; t=1538053034;
	h=Content-Type:Content-Transfer-Encoding:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results;
	bh=vjNnp3JFgJnF+bXZuyJqe9mHWlP3cOE4SzxiBFvHp64=; 
	b=SmTWWljAAhepJxQRK9JlHp6IZvwy7ndUf1LBdTjyNh3CiywFhruoFxYi98jsQB05dqVUfdfzdNTfPxWLrU18zgaiy2YbB60uUn/X15pWd3WPFoSTLkjhwEA+lkukljQWsOnBIv+39IyTdNs6IHYd/wwBttJAITokulqtLcH5ulw=
ARC-Authentication-Results: i=1; mx.zoho.com;
	dkim=pass  header.i=apertussolutions.com;
	spf=pass  smtp.mailfrom=kbassford@apertussolutions.com;
	dmarc=pass header.from=<kbassford@apertussolutions.com>
	header.from=<kbassford@apertussolutions.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1538053034; 
	s=zoho; d=apertussolutions.com;
	i=kbassford@apertussolutions.com; 
	h=Date:From:To:Message-ID:In-Reply-To:References:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding;
	l=2548; bh=vjNnp3JFgJnF+bXZuyJqe9mHWlP3cOE4SzxiBFvHp64=;
	b=k2KMlpIyZXWfPK6STvXmbSb9XYSrknJ41LOGJ3HsnlDLN7i4K/lTebzjxNU2CZn2
	6PoeaLos5nD66JbTfJjQL/GoVnJ2Xhj2QIt3RQgBI5XBNqQBmAiHeq5BBpIm8EOWcTq
	J4mo0LFyVjstmKIfXda4QnhViScDzQTEQz6ijQWQ=
Received: from mail.zoho.com by mx.zohomail.com
	with SMTP id 1538053032734913.2354175078036;
	Thu, 27 Sep 2018 05:57:12 -0700 (PDT)
Date: Thu, 27 Sep 2018 08:57:12 -0400
From: Ken Bassford <kbassford@apertussolutions.com>
To: "yocto Mail list" <yocto@yoctoproject.org>
Message-ID: <1661b1acb1d.caacf768168697.6326896293055027310@apertussolutions.com>
In-Reply-To: <16617101250.ad4efaf326593.815754531547370500@apertussolutions.com>
References: <1661613e486.f5f6798c369397.3628233815132925426@apertussolutions.com>
	<16617101250.ad4efaf326593.815754531547370500@apertussolutions.com>
MIME-Version: 1.0
X-Priority: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
Subject: Re: Proper convention for naming guest
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
X-List-Received-Date: Thu, 27 Sep 2018 12:57:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

 > Hi Folks, 
 >  
 > Managed to get what I wanted via a combination of ... 
 >   my xl create image.conf file(s) ... 
 > """ 
 > # Guest name 
 > name = "<hostname here>" 
 > hostname = "<hostname here>" 
 > """ 
 >   and adding the following to my bb image recipe(s) .... 
 > """ 
 > # Set hostname 
 > run_postprocess() { 
 >     echo "<hostname here" > ${IMAGE_ROOTFS}/etc/hostname 
 > } 
 >  
 > ROOTFS_POSTPROCESS_COMMAND += " run_postprocess ; " 
 > """ 
 > Not the most elegant, but it will do. 
 >  
 > Sincerely, 
 > Ken Bassford 
 > Apertus Solutions 
 > (U) 301-490-4299 (x1292) 
 >  
 > ---- On Wed, 26 Sep 2018 09:31:34 -0400 Ken Bassford <kbassford@apertussolutions.com> wrote ---- 
 >  
 >  > Hi Folks,  
 >  >   
 >  > I'm rather new to Yocto so please forgive me (and please correct me) if I have some of the terminology wrong.  
 >  >   
 >  > I am currently building a Xen dom0 with two guest domain images running under the dom0.  These directories for building each of these images are located under the meta-virtualization directory in the build environment as recipe directories (recipe-xxx).  Dom0 and each of the images work fine.  
 >  >   
 >  > The trouble I am having is that I wanted to give each domU a unique name/hostname to make networking and management easier so I don't have to manually set them up each time one is modified.  Since each recipe only consisted of several sub-directories containing .bb files, I created a "base-files_3.0.14.bbappend" to each recipe's 'image' sub-directory (consisting of one line: hostname_pn-base-files = "<name of host>").  Now it seams that every time meta-virtualization is called bitbake "sees" the first .bbappend it comes across and tries to change the hostname regardless of which recipe I am building (i.e. If you run "bitbake -e base-files | grep ''hostname" it will always result in the same custom hostname).  Obviously this is not the proper way to set the hostname.  
 >  >   
 >  > What is the proper way to go about this?  Can I set it on the bitbake command line for building the image?  
 >  >   
 >  > I'd like for the hostname to be tied to the custom image recipe I am building.  If I don't specifically call one of my custom recipes, neither should automatically be changing the hostname.  
 >  >   
 >  > Thank you in advance for your time.  
 >  >   
 >  > Sincerely,  
 >  > Ken Bassford  
 >  > Apertus Solutions  
 >  >   
 >  >   
 >  >   
 >  > --  
 >  > _______________________________________________  
 >  > yocto mailing list  
 >  > yocto@yoctoproject.org  
 >  > https://lists.yoctoproject.org/listinfo/yocto  
 >  >  
 > 


