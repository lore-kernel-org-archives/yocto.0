Return-Path: <dv@pseudoterminal.org>
Received: from ptmx.org (ptmx.org [178.63.28.110])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F04CE00595
	for <yocto@yoctoproject.org>; Sun,  2 Feb 2014 08:27:54 -0800 (PST)
Received: from [192.168.178.14] (chello080108009040.14.11.vie.surfer.at
	[80.108.9.40]) by ptmx.org (Postfix) with ESMTPSA id 5B00B225E3;
	Sun,  2 Feb 2014 17:27:53 +0100 (CET)
Message-ID: <52EE728A.8050905@pseudoterminal.org>
Date: Sun, 02 Feb 2014 17:30:02 +0100
From: Carlos Rafael Giani <dv@pseudoterminal.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: "Kishore Divvela -ERS, HCL Tech" <kishore-d@hcl.com>, 
	Khaja Hussain Shaik <khajahussain-s@hcl.com>
References: <31DD9473F5EB4E468EDC3B5642AD64BD08AECFFC@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
	<CAP71Wjwgmoyj-L9MVyNe4Fk=g5OGmOa7KrAKCuWP+C-=iEZX6g@mail.gmail.com>
	<1938188.T29nr9UITP@peggleto-mobl5.ger.corp.intel.com>
	<52D8DBA7.4070700@pseudoterminal.org>
	<31DD9473F5EB4E468EDC3B5642AD64BD08E3F431@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
	<52EE67AF.60308@pseudoterminal.org>
	<84B977B6A84B774995572EB08A8E2D3C01241E76@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
	<52EE7117.2040806@pseudoterminal.org>
	<84B977B6A84B774995572EB08A8E2D3C01241ECD@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
In-Reply-To: <84B977B6A84B774995572EB08A8E2D3C01241ECD@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>,
	Dipesh Karmakar <Dipesh.Karmakar@hcl.com>
Subject: Re: Rgardring GSTreamer1.0 integration on Yocto dylan
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
X-List-Received-Date: Sun, 02 Feb 2014 16:27:55 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-02-02 17:24, Kishore Divvela -ERS, HCL Tech wrote:
> Hi Carlos,
>
> We are running Gstreamer on Intel Baytrail board.
>
> Media formats are MP4, AVI and 3GP.
>
> Regards,
> Kishore

I re-ran tests with both dylan and danny builds, and was able to play 
videos in all of these formats with playbin. So I don't think it is 
specific to the layer. Therefore I recommend continuing this on the 
gstreamer mailing list.

Please re-run your pipeline with the GST_DEBUG environment variable set 
to "2", and post on the gstreamer list.

Carlos

