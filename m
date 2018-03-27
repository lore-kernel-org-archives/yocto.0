Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A3CFE00C9E; Tue, 27 Mar 2018 07:36:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.181 listed in list.dnswl.org]
Received: from mail-ot0-f181.google.com (mail-ot0-f181.google.com
	[74.125.82.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEBA6E00CA4
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 07:36:30 -0700 (PDT)
Received: by mail-ot0-f181.google.com with SMTP id m22-v6so24728746otf.10
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 07:36:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=3im2mGH7wJ0jwGrYkNbVa6ENkrZpKyeHoN1Y7c4MVcY=;
	b=TCbCJhUaLszz495G2iEyXSAHuxI3nHvisdqurpnzNvlpOXi5P4DYj9SnoV1Pml+/iA
	fp883xX7mFN54HyhXqCChBiGo0uzUGYTndjgYuE40NaK98bSIVCM35fHS+5tX995BNYK
	3WtdledsIwwUehCPjzB4PsyeeDluqVrg/9yPiJrfQBnVUbxgSuIZuNWyzce4yPzJooMI
	6eeMRpznxbSieP7mcbiLVqzZyeuLDhIO0Xql50Wog5vCjxXZJ3e3K3IVx9GvJRc00B/V
	19bQjiQkHnKxltYJtjKCxQII/2rp7GbIKefRKxDPXRi++oqAMz8vQ8dfCHo7R6PskCEv
	opIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=3im2mGH7wJ0jwGrYkNbVa6ENkrZpKyeHoN1Y7c4MVcY=;
	b=eEEhUbO6wKodkjBu3CORlinaXUBBIufiKLWHWOpTNTX46w2tUJpvlLEulG6I4reYfp
	ZoJfbqplpz8FawiexpND42AnBwbY04pO4Ja+hznnua5xVD28PY0eEM1dwMzCNJ37qVVp
	Bf23WzZh4Vi3nvs8eODQ6r1csfTInEjsgsMJwNi9IW6u5Q/DFFFo9eul6AtYb78QGCNu
	dHrNo3u5PG1YW87fTMMeX1ld7TdStqXOisaktpVGvuKa/XLa2D5o2KiM4jaCethguF57
	VuI2MYt3MnJVW+LpWkAzdbgTPoPOur564kpPOaIDXa3i7NfhDf0dptbTxWAPp5be9l4E
	kbOw==
X-Gm-Message-State: AElRT7He9L+8Ni1cTTpHDUDjHLDQU6RHUVJS1vPJAvTGv1Jn7BGpagrC
	McNquFhILark4IcPBzJv3tiiI9sGpdmdLRrvaK4aZA==
X-Google-Smtp-Source: AIpwx4/Z7lVSVsBjKi/NF/BsTf4K+xR6FI/474eriTDSt70NYwfcBvu0znBfW8sZX7a5eihbODxCSauc6l8+4srGfjg=
X-Received: by 2002:a9d:e4d:: with SMTP id
	n13-v6mr5706433otd.168.1522161390079; 
	Tue, 27 Mar 2018 07:36:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.138.17.198 with HTTP; Tue, 27 Mar 2018 07:36:09 -0700 (PDT)
In-Reply-To: <659e5b2f633db141db18cd7d14cb1d87@sw-optimization.com>
References: <659e5b2f633db141db18cd7d14cb1d87@sw-optimization.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 27 Mar 2018 15:36:09 +0100
Message-ID: <CAJTo0LbykBwOmg5_g6ozRx95Cu4SqjFFkHjhcKyXTbNd7EZ+rQ@mail.gmail.com>
To: Eric Schwarz <eas@sw-optimization.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: New Recipes / Recipe Fixes
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
X-List-Received-Date: Tue, 27 Mar 2018 14:36:32 -0000
Content-Type: text/plain; charset="UTF-8"

No.

Generally, read the README at the top of each layer.  For example, for
openembedded-core you want openembedded-core@lists.openembedded.org.

Ross

On 27 March 2018 at 14:28, Eric Schwarz <eas@sw-optimization.com> wrote:
> Hello,
>
> is this the right mailing list to post new recipes for libraries to be
> included in the openembedded layer and/or recipes patches, respectively?
>
> Many thanks
> Eric
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

