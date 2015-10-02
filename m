Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0362BE0049B; Fri,  2 Oct 2015 08:03:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 401 seconds by postgrey-1.32 at yocto-www;
	Fri, 02 Oct 2015 08:03:19 PDT
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 90FD5E00343
	for <yocto@yoctoproject.org>; Fri,  2 Oct 2015 08:03:19 -0700 (PDT)
Received: (qmail 2062 invoked by uid 1003); 2 Oct 2015 14:56:37 -0000
Received: from unknown (HELO ?192.168.11.124?)
	(philip@opensdr.com@71.171.10.146)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	2 Oct 2015 14:56:37 -0000
To: Edward Vidal <develone@sbcglobal.net>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <1006153332.270433.1443796078701.JavaMail.yahoo@mail.yahoo.com>
From: Philip Balister <philip@balister.org>
Message-ID: <560E9B25.5030303@balister.org>
Date: Fri, 2 Oct 2015 10:56:37 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <1006153332.270433.1443796078701.JavaMail.yahoo@mail.yahoo.com>
Subject: Re: wpa_supplicant on Raspberry Pi 2B
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
X-List-Received-Date: Fri, 02 Oct 2015 15:03:24 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 10/02/2015 10:27 AM, Edward Vidal wrote:
> Hello all,I am using a Wi-Pi wireless adapter. 
> My image has the following packages installed.
> wpa-supplicant-2.4-r0.cortexa7hf_vfp_vfpv4_neon
> wpa-supplicant-cli-2.4-r0.cortexa7hf_vfp_vfpv4_neon
> wpa-supplicant-dev-2.4-r0.cortexa7hf_vfp_vfpv4_neon
> wpa-supplicant-doc-2.4-r0.cortexa7hf_vfp_vfpv4_neon
> wpa-supplicant-passphrase-2.4-r0.cortexa7hf_vfp_vfpv4_neon
> Do I need any additional packages?
> My wired eth0 works okay.
> Which document has the most current information on setting up wireless networking?From the information at 
>  http://trac.gateworks.com/wiki/Yocto/Wireless
> 
> I modified my /etc/wpa_supplicant.conf as below without success.
> ctrl_interface=/var/run/wpa_supplicant
> ctrl_interface_group=0
> update_config=1
> 

Try modifying /etc/network/interfaces like this:

https://github.com/EttusResearch/meta-ettus/commit/da86e76d116798e386d073a18453aabb6179a09a#diff-063964fa6e41065c7868b13b1b1644eaR11

it seems wireless extensions are deprecated and you should use the
nl80211 driver now.

Philip


> network={
>         scan_ssid=1
>         ssid="myssid"
>         psk="mypsk"
>         proto=WPA
>         key_mgmt=WPA-PSK
> }Below is the results I get when I run iwconfig.
> iwconfig 
> wlan0     IEEE 802.11bgn  ESSID:off/any  
>           Mode:Managed  Access Point: Not-Associated   Tx-Power=0 dBm   
>           Retry short limit:7   RTS thr:off   Fragment thr:off
>           Encryption key:off
>           Power Management:off
>           
> lo        no wireless extensions.
> 
> eth0      no wireless extensions.
> Thanks in advance.  Any help is appreciated.
> 
>  Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613
> 
> 
> 

