Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECAA1E00576; Mon,  7 Jul 2014 17:30:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id BF9F7E00566
	for <yocto@yoctoproject.org>; Mon,  7 Jul 2014 17:30:31 -0700 (PDT)
Received: (qmail 21908 invoked by uid 1003); 8 Jul 2014 00:30:30 -0000
Received: from unknown (HELO ?192.168.1.122?) (philip@opensdr.com@108.44.80.46)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	8 Jul 2014 00:30:30 -0000
Message-ID: <53BB3BA4.7040704@balister.org>
Date: Mon, 07 Jul 2014 20:30:28 -0400
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>, 
	Bharath Chandra <ellurubharath29@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAGM0ZdSWnuJMWoq55STgQwWkNJLubeHhEMwF_LHgVPpK0BMt3w@mail.gmail.com>
	<1404750413.98339.YahooMailNeo@web122501.mail.ne1.yahoo.com>
In-Reply-To: <1404750413.98339.YahooMailNeo@web122501.mail.ne1.yahoo.com>
X-Enigmail-Version: 1.6
Subject: Re: List of Recipes
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
X-List-Received-Date: Tue, 08 Jul 2014 00:30:37 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Also look into the buildhistory class.

Philip

On 07/07/2014 12:26 PM, Alexandru Vaduva wrote:
> using:
> 
> bitbake -g <image-name> && cat pn-depends.dot | grep -v -e '-native' | grep -v digraph | grep -v -e '-image' | awk '{print $1}' | sort | uniq
> 
> you can visualize the image packages. Let me know if this is what you are looking for.
> 
> 
> 
> On Monday, July 7, 2014 7:04 PM, Bharath Chandra <ellurubharath29@gmail.com> wrote:
>  
> 
> 
> Hi All,
> 
> I have an image deployed on gumstix board and I do not know the recipe file used to build that image. I want to know list of recipes used to build that image. Is it possible??
> 
> 
> 
> Thanks & Regards,
> Bharath Chandra Elluru.
> Contact Number:785-979-4875.
> 
> 
> 

