Received: from smtpcmd15176.aruba.it (smtpcmd15176.aruba.it [62.149.158.101])
 by mx.groups.io with SMTP id smtpd.web12.33445.1612781569017797235
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Feb 2021 02:52:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aruba.it header.s=a1 header.b=XTuuhqXj;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 62.149.158.101, mailfrom: mauro@faresoftware.it)
Received: from [192.168.24.172] ([93.38.119.136])
	by Aruba Outgoing Smtp  with ESMTPSA
	id 949plJ6ihBD2n949rl0XD9; Mon, 08 Feb 2021 11:52:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1612781566; bh=z64mbGqzfzQeeduCio9ZD4fgw9h34CjI1pPEi2AFv6M=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=XTuuhqXjRn57fG2jlbrGeA0NaxDipTek6jRXC9dY9CMoMrzBJAE+wXnoffwYQ02Re
	 svlZ5/lKNCbLjaN9MpS5Kxr0pYIpvpUCYEHRy989Ez7ws8vPapWldLZDThSjlEZGb+
	 sMpLeGx2eykf6kPKc0vMkrZ+nmsHxmfQfkAnpvXrx+D/jpB1AWRelffg7mFfZkOE9B
	 z/j2sIbGPpbng1wPhN9vpk5PIyQqgx4V1nB8/JeFjFQecFEW5aHBEXi3GoqEK5tRCI
	 ITSdgJBglad5nAJ/XCPMZiwvUZKAxfACZL9MwpJHEquP6Mh3XmoU4I0ZKFF5PwcKnF
	 iERZ3Y2om3Mzw==
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
From: "Mauro Ziliani" <mauro@faresoftware.it>
Subject: PREFERRED_VERSION_pn-: which version is selected?
Message-ID: <dce0933f-55a7-cdab-aec7-3662f130240b@faresoftware.it>
Date: Mon, 8 Feb 2021 11:52:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfCZ7alRTbMNRld7/33v85EPwyCFmw3HlyDJ5Sq5lfuZ6L60ggGcvUFioYQvh9mH8no0jFM+exI0u2DUeMQo4ujtPzy8BP1hKVxWgR3yO9/AZy8SfWbQg
 JvnzmDQixhCvSWPRzF7LFIJkohjpvyL2aHXju4o0Fv+FOioExb1lAmqlOIZz4PnDA8v0zY+pQxQJQg==
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all.

I'm working with Krogoth on imx6


I have the same recipe with different versions

recipe1_0.9.bb

recipe1_1.0.bb


In the image recipe I put


image-recipe.bb

IMAGE_INSTALL_append := " \

     recipe1 \

"

PREFERRED_VERSION_pn-recipe1 := "0.9"


If I do

  bitbake -s

I get

recipe1    :1.0-r0


If I do

bitbake image-recipe


in image-recipe.manifest I look

recipe1  1.0-r0


Why is not selected the preferred version?

How can I choose the recipe's version I'd like?


Best regards,

    MZ

