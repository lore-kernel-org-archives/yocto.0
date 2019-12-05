Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by mx.groups.io with SMTP id smtpd.web12.2740.1575509834848671023
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Dec 2019 17:37:14 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: linux.intel.com, ip: 192.55.52.120, mailfrom: paul.eggleton@linux.intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Dec 2019 17:37:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,279,1571727600"; 
   d="scan'208";a="361759950"
Received: from lokx-mobl1.gar.corp.intel.com (HELO shodan.localnet) ([10.249.69.245])
  by orsmga004.jf.intel.com with ESMTP; 04 Dec 2019 17:37:10 -0800
From: "Paul Eggleton" <paul.eggleton@linux.intel.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>, Paul Barker <paul@betafive.co.uk>
Cc: yocto@yoctoproject.org, yocto@lists.yoctoproject.org
Subject: Re: [yocto] Missing layer in the layer index
Date: Thu, 05 Dec 2019 14:37:07 +1300
Message-ID: <1725959.xBGxL0dlV4@shodan>
Organization: Intel Corporation
In-Reply-To: <CAP71Wjw=1yz2_hbZHCmeCyHTaBqTfWjpHEkBARf+eXbnNtZB3g@mail.gmail.com>
References: <04e3ffe3-4733-4010-ac76-29b72ae20c89@www.fastmail.com> <CAP71Wjw=1yz2_hbZHCmeCyHTaBqTfWjpHEkBARf+eXbnNtZB3g@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, 4 December 2019 11:10:49 PM NZDT Nicolas Dechesne wrote:
> > I'd like to make sure meta-sancloud (https://github.com/SanCloudLtd/meta-> > sancloud) is listed in the layer index. I can't see it listed for either
> > of the branches we support (thud & rocko). However, when I try to add the
> > layer I get the error message "Layer with this Layer name already exists."
> >
> > Perhaps this was already added with an old URL. Is there any way to get
> > this fixed up?
> 
> yes, this is the reason. It exists with the following URL:
> https://bitbucket.sancloud.co.uk/scm/yb/meta-sancloud.git
> 
> The maintainer for that layer is not listed.. was it you?

Oddly there are no maintainer records and no layer branch records either, 
hence why the layer doesn't show up properly. I'm unsure how it would have got 
into that state or how long it's been there, but since it's pretty much 
useless I have gone ahead and deleted it - Paul, could you please file your 
submission again?

Thanks
Paul

-- 

Paul Eggleton
Intel System Software Products


