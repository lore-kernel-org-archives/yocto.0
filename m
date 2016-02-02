Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06C79E00C18; Tue,  2 Feb 2016 09:20:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f169.google.com (mail-pf0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3AEEE008F1
	for <yocto@yoctoproject.org>; Tue,  2 Feb 2016 09:20:07 -0800 (PST)
Received: by mail-pf0-f169.google.com with SMTP id 65so108410430pfd.2
	for <yocto@yoctoproject.org>; Tue, 02 Feb 2016 09:20:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=3ZbbScdlYNamITGr4rY62wmAkKOc7UY3Ejpnoeiek8g=;
	b=Mprh8/oW/QKkjPl+CjG7XYpM4C1KAXhmHoArAuVGN1oifKSAQqRXwqYA23X98AMBYj
	bwmQsfAR9SzkpbMKiBToXyqlFeIn9DKutIWOe/RrXSZ46S0ejRNhDU2Fp3iCyYM44YjG
	TtGzOqUbYKD7e3cNuj8iKwbk3+1R3GuP+rCLOqZrDlatbrpZgNxEFE4bYOoMaf/jEqu+
	tRzuNEfGSDH5+/tz80vx2gbtP1zdIdrpKAwS6b8ZsWrFYvYKa36o/5PtNufciNm4cDXQ
	pupuwbnIiCFRqjELCoPUOjPNG0Ujg3vyvkXXX80szItcp19plTGuzznI52JibWWS0hYT
	AD9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-type
	:content-transfer-encoding;
	bh=3ZbbScdlYNamITGr4rY62wmAkKOc7UY3Ejpnoeiek8g=;
	b=gVI7JXXF1ApVvzCCpoID/H/eLVAzZ85U3rQavNnneVs/i5EtXdcYKfsvHdveVC09bA
	Bd0v5ZZqH7/0+ZAvsJMSNxTVJkdv3BtPjGdk0NB2qQjidIxZuZFOPyRDTD2XFHvGJlru
	ZyYESMQ5/6nikonmvjq25Y+0Q50Slleoe27U9qRPmPqa4croiu1ydoHB6Sa9qtiRsD6p
	O6XmOYCvCmAZXjvu4MIzTlDbZKkqCKtgtkxsH5MUwKwa3RzNxe/zHp/iSq4xq0L5lCca
	apIOkd+GXQyOBxPTZ8vBgLg+EZYkIorGfHXkW43wl67IfcSvwry9+wsHvnNhTo7g9MCq
	czlg==
X-Gm-Message-State: AG10YOS6wXr40+fvwTPtY45NfAOagJFU5z9YyqYCaCBtdTEM1VjoiQKEaLJy2dnhbc7Mi75/
X-Received: by 10.98.13.195 with SMTP id 64mr49117897pfn.164.1454433607271;
	Tue, 02 Feb 2016 09:20:07 -0800 (PST)
Received: from ?IPv6:2601:202:4000:1239:cd4a:4063:c7f1:4a4?
	([2601:202:4000:1239:cd4a:4063:c7f1:4a4])
	by smtp.googlemail.com with ESMTPSA id
	d65sm3951735pfb.74.2016.02.02.09.20.05
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 02 Feb 2016 09:20:05 -0800 (PST)
To: "Jolley, Stephen K" <stephen.k.jolley@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <9ADD3FDE8B189B4AA2F8A3C711F8155E56FBB213@fmsmsx111.amr.corp.intel.com>
From: akuster <akuster@mvista.com>
Message-ID: <56B0E53F.7060906@mvista.com>
Date: Tue, 2 Feb 2016 09:19:59 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <9ADD3FDE8B189B4AA2F8A3C711F8155E56FBB213@fmsmsx111.amr.corp.intel.com>
Cc: "Chen, Terence" <terence.chen@intel.com>
Subject: Re: Minutes: Yocto Project Technical Team Meeting - Tuesday, Feb. 2, 2016 8:00 AM US Pacific Time
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
X-List-Received-Date: Tue, 02 Feb 2016 17:20:11 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 02/02/2016 08:19 AM, Jolley, Stephen K wrote:
> Attendees: Armin, Stephen, Joshua, Belen, Sona, Richard, Ross,
> 
> 
> 
> AR: Armin - Develop a bugzilla enhancement request to handle patches for older stable branches.

bug is 9037

- armin
> 
> 
> 
> Agenda:
> 
> 
> 
> * Opens collection - 5 min (Stephen)
> 
> * Yocto Project status - 5 min (Stephen/team)
> 
> YP 2.1 M2 rc1 is in QA.  Should be out soon.
> 
> YP 2.0.1 rc2 came out of QA, but because we had CVE's after it went in, and a number of issues.  We will do an rc3 as soon as we can get fixes ready.
> 
> https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.1_Status
> 
> https://wiki.yoctoproject.org/wiki/Yocto_2.1_Schedule
> 
> https://wiki.yoctoproject.org/wiki/Yocto_2.1_Features
> 
> * Opens - 10 min
> 
> Armin - Discussed change process for patches for older stable branches.
> 
> Richard - Python expansion changes are being discussed on the architecture list.  Theses might break something.  But after the changes are made we will fix them. Overall we think this will fix other important issues.
> 
> Richard - Change are being discussed to make files options.  It might also break something, but it fixes a number of long term issues.
> 
> * Team Sharing - 10 min - Nothing.
> 
> 
> 
> 
> Thanks,
> 
> Stephen K. Jolley
> Yocto Project Program Manager
> INTEL, MS JF1-255, 2111 N.E. 25th Avenue, Hillsboro, OR 97124
> *   Work Telephone:          (503) 712-0534
> *    Cell:                                (208) 244-4460
> * Email:                             stephen.k.jolley@intel.com
> 
> 
> 
> 

